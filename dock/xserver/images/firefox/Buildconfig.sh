#
# build config
#
PACKAGES="www-client/firefox www-plugins/adobe-flash"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    #update_use 'app-text/ghostscript-gpl' '+cups'
    update_keywords 'www-client/firefox' '+~amd64'
    update_use 'media-libs/libpng' '+apng'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
