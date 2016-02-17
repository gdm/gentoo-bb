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
    update_use 'dev-db/mysql' 'minimal -perl'
}

finish_rootfs_build()
{
    # remove curl again
    uninstall_package net-misc/curl
}
END

cat <<END > dock/${MY_NS}/images/${IMG_NAME}/Dockerfile.template
FROM gentoobb/openssl
ADD rootfs.tar /
CMD ["mysql"]
END
