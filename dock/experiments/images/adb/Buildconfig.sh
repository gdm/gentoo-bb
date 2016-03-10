PACKAGES="dev-util/android-tools sys-apps/usbutils"
configure_rootfs_build() 
{
    update_keywords 'dev-util/android-tools' '+~amd64'
}

finish_rootfs_build()
{
    copy_gcc_libs
}
