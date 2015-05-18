#!/bin/bash -xe

# download maven

# keys for maven http://www.apache.org/dist/maven/KEYS
mkdir -p bin
cd bin
wget -c http://apache.proserve.nl/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
wget -c http://www.apache.org/dist/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz.asc

gpg --verify apache-maven-3.3.3-bin.tar.gz.asc apache-maven-3.3.3-bin.tar.gz

# download intellij

