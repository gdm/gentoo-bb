#
# build config
#
PACKAGES="net-misc/curl mail-mta/exim net-mail/dovecot net-mail/fetchmail mail-filter/procmail app-shells/bash"

#
# this method runs in the bb builder container just before building the rootfs
#
configure_rootfs_build()
{
    update_use 'mail-mta/exim' '+dovecot-sasl' '-ldap' '+maildir' '+sasl' '+sqlite'
    update_use 'net-mail/dovecot' '+imapc' '-ldap' '+maildir' '+mbox' '+sqlite'
    update_use 'mail-filter/procmail' '+mbox'

    # reinstall curl, need at build time
    unprovide_package net-misc/curl
}

#
# this method runs in the bb builder container just before packing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
    copy_locale_data
    #mkdir -p $EMERGE_ROOT/var/run/mysql $EMERGE_ROOT/var/run/mysqld
    #chown mysql:mysql $EMERGE_ROOT/var/run/mysql $EMERGE_ROOT/var/run/mysqld
    # remove curl again
    uninstall_package net-misc/curl
}
