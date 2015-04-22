#
# build config
#
PACKAGES="dev-util/pkgconfig x11-wm/xpra"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'dev-lang/python' '+sqlite'
    update_keywords 'x11-wm/xpra' '+~amd64'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
