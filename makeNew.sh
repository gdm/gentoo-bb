MY_NS=experiments

mkdir -p dock/${MY_NS}/images/
cat <<END > dock/${MY_NS}/build.conf
AUTHOR="Dmytro Gorbunov<dmitro.gorbunov@gmail.com>"
DEF_BUILD_CONTAINER="gentoobb/bob"
CONTAINER_ENGINE="docker"
END

IMG_NAME=mysql-client
mkdir -p dock/${MY_NS}/images/${IMG_NAME}
cat <<END > dock/${MY_NS}/images/${IMG_NAME}/Buildconfig.sh
PACKAGES="dev-db/mysql"
configure_rootfs_build() 
{
    update_use 'dev-db/mysql' '+minimal -server -perl'
    #unprovide_package dev-lang/perl sys-libs/ncurses-5.9-r99 sys-libs/db sys-apps/texinfo
}

finish_rootfs_build()
{
    uninstall_package dev-lang/perl =sys-libs/ncurses-5.9-r99 sys-libs/db app-arch/bzip2 app-portage/portage-utils app-shells/bash app-admin/perl-cleaner dev-perl/libintl-perl dev-libs/libaio app-admin/perl-cleaner 
}
END

cat <<END > dock/${MY_NS}/images/${IMG_NAME}/Dockerfile.template
FROM gentoobb/openssl
ADD rootfs.tar /
CMD ["mysql"]
END
