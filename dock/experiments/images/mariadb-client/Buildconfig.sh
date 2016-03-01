PACKAGES="dev-db/mariadb"
configure_rootfs_build() 
{
    update_use 'dev-db/mariadb' '-server -perl openssl'
    #unprovide_package dev-lang/perl sys-libs/ncurses-5.9-r99 sys-libs/db sys-apps/texinfo
}

finish_rootfs_build()
{
    copy_gcc_libs
    uninstall_package dev-lang/perl sys-libs/ncurses-5.9-r99 sys-libs/db app-portage/portage-utils app-admin/perl-cleaner dev-perl/libintl-perl dev-libs/libaio app-admin/perl-cleaner dev-perl/Text-Unidecode dev-perl/Unicode-EastAsianWidth perl-core/Data-Dumper perl-core/File-Temp sys-apps/coreutils sys-apps/sed sys-apps/texinfo
}
