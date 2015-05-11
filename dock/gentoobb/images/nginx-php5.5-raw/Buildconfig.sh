#
# build config
#
PACKAGES="dev-lang/php:5.5"
PHP_TIMEZONE="${BOB_TIMEZONE:-UTC}"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    echo 'PHP_TARGETS="php5-5"' >> /etc/portage/make.conf
    echo 'PHP_INI_VERSION="production"' >> /etc/portage/make.conf

    update_use 'dev-lang/php' '-cli' '+bcmath' '+calendar' '+curl' '+curlwrappers' '+fpm' '+gd' '+mhash' \
               '+mysql' '+mysqli' '+pdo' '+soap' '+sockets' '+xmlreader' '+xmlrpc' '+xmlwriter' '+xpm' '+zip'
    update_use 'app-eselect/eselect-php' '+fpm'

    # skip bash, perl, autogen. pulled in as dep since php 5.5.22
    provide_package app-shells/bash dev-lang/perl sys-devel/autogen
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # set php iconv default to UTF-8, if you need full iconv functionality set ICONV_FROM=gentoobb/glibc above
    sed -i 's/^;iconv.input_encoding = ISO-8859-1/iconv.input_encoding = UTF-8/g' $EMERGE_ROOT/etc/php/fpm-php5.5/php.ini
    sed -i 's/^;iconv.internal_encoding = ISO-8859-1/iconv.internal_encoding = UTF-8/g' $EMERGE_ROOT/etc/php/fpm-php5.5/php.ini
    sed -i 's/^;iconv.output_encoding = ISO-8859-1/iconv.output_encoding = UTF-8/g' $EMERGE_ROOT/etc/php/fpm-php5.5/php.ini
    # set php time zone
    sed -i "s@^;date.timezone =@date.timezone = $PHP_TIMEZONE@g" $EMERGE_ROOT/etc/php/fpm-php5.5/php.ini
    # required by null-mailer
    copy_gcc_libs
    chmod 0640 $EMERGE_ROOT/etc/nullmailer/remotes
    mv $EMERGE_ROOT/etc/php $EMERGE_ROOT/etc/php.gen
    mkdir -p $EMERGE_ROOT/etc/php
}
