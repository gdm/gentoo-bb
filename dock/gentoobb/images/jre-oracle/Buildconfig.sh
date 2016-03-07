#
# build config
#
PACKAGES="dev-java/oracle-jre-bin"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'dev-java/oracle-jre-bin' '+jce'

    # download oracle jre bin
    JRE_URL=http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jre-8u74-linux-x64.tar.gz
    regex="(jre-[0-9a-z]*-linux-x64\.tar\.gz)"

    [[ ${JRE_URL} =~ $regex ]] && JRE_TAR="${BASH_REMATCH[1]}"
    [ -n ${JRE_TAR} ] && [ ! -f /distfiles/${JRE_TAR} ] && download_from_oracle "${JRE_URL}"

    JCE_FILE=jce_policy-8.zip
    JCE_URL=http://download.oracle.com/otn-pub/java/jce/8/${JCE_FILE}
    [ ! -f /distfiles/${JCE_FILE} ] && download_from_oracle "${JCE_URL}"

    update_use 'dev-java/oracle-jre-bin' '+headless-awt +jce -fontconfig'
    # skip python and iced-tea
    provide_package dev-lang/python dev-java/icedtea-bin
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
