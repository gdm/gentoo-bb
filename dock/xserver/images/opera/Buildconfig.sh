#
# build config
#
PACKAGES="www-client/opera-beta"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_keywords 'www-client/opera-beta' '+~amd64'
    update_use 'app-text/ghostscript-gpl' '+cups'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
