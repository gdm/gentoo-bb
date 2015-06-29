#
# build config
#
#PACKAGES="app-editors/vim app-shells/zsh sys-apps/shadow x11-wm/xpra"
PACKAGES="mail-client/mutt"
#KEEP_HEADERS=true

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
  #  update_use '+X'

    echo 'PYTHON_TARGETS="python2_7"' >> /etc/portage/make.conf
    echo 'PYTHON_SINGLE_TARGET="python2_7"' >> /etc/portage/make.conf
    echo 'USE_PYTHON="2.7"' >> /etc/portage/make.conf
    #echo 'VIDEO_CARDS="dummy fbdev"' >> /etc/portage/make.conf
   
    #update_use 'x11-wm/xpra' '-client' '+server' '+x264'
    #update_use 'dev-lang/python' '+sqlite'
    #emerge -uDN --tree world
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
  :
    # required by fontconfig
    #copy_gcc_libs
}
