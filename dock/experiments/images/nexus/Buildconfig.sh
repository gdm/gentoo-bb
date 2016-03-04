#
# build config
#
PACKAGES="app-arch/tar app-arch/gzip"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
  :    
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    install_gosu
}
