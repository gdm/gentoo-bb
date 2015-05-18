#
# build config
#
PACKAGES="sys-apps/shadow x11-apps/xeyes x11-wm/xpra"
#KEEP_HEADERS=true

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    echo 'PYTHON_TARGETS="python2_7"' >> /etc/portage/make.conf
    echo 'PYTHON_SINGLE_TARGET="python2_7"' >> /etc/portage/make.conf
    echo 'USE_PYTHON="2.7"' >> /etc/portage/make.conf
    echo 'VIDEO_CARDS="dummy xvfb"' >> /etc/portage/make.conf
    echo 'INPUT_DEVICES=""' >> /etc/portage/make.conf

    update_use 'x11-wm/xpra' '-client' '+server' '+x264'
    update_use 'x11-base/xorg-server' '-udev' '+xvfb' '+xorg' '-suid'
    update_use 'dev-lang/python' '+sqlite'
    update_use '+X' 
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # required by fontconfig
    copy_gcc_libs
}
