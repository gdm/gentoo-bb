#
# build config
#
PACKAGES="dev-java/icedtea"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    echo 'PYTHON_TARGETS="python2_7 python3_4"' >> /etc/portage/make.conf

    # skip python
    provide_package dev-lang/python

    update_keywords 'dev-java/icedtea' '+~amd64'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
}
