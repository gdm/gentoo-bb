### experiments/mariadb-client:20160211
Built: Sun Feb 21 01:51:49 CET 2016

Image Size: 91.83 MB
#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r6 | `-static -static-libs`
app-shells/bash-4.3_p42-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins -vanilla`
dev-db/mariadb-10.0.23 | `bindist openssl -debug -embedded -extraengine -jemalloc -latin1 (-libressl) -odbc -oqgraph -pam -perl -profiling (-selinux) -server -sphinx -static -static-libs -systemtap -tcmalloc {-test} -tokudb -xml -yassl`
dev-libs/iniparser-3.1-r1 | `-doc -examples -static-libs`
dev-libs/libpcre-8.38 | `bzip2 cxx readline recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -static-libs`
sys-apps/acl-2.2.52-r1 | `nls -static-libs`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-libs/ncurses-5.9-r5 | `cxx unicode -ada -debug -doc -gpm -minimal (-profile) -static-libs -tinfo -trace`
sys-libs/readline-6.3_p8-r2 | `-static-libs -utils`
sys-process/procps-3.3.10-r1 | `nls unicode -modern-top -ncurses (-selinux) -static-libs -systemd {-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb/openssl** |
app-misc/ca-certificates-20140927.3.17.2 | `cacert`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2f | `asm bindist tls-heartbeat zlib -gmp -kerberos -rfc3779 -sctp -static-libs {-test} -vanilla`
sys-apps/debianutils-4.4 | `-static`
sys-libs/zlib-1.2.8-r1 | `-minizip -static-libs`
**FROM gentoobb/s6** |
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `-doc -ipv6 -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
*manual install*: entr-3.4 | http://entrproject.org/
**FROM gentoobb/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.21-r1 | `hardened -debug -gd (-multilib) -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2015g | `nls -leaps`
**FROM gentoobb/busybox** |
sys-apps/busybox-1.24.1 | `make-symlinks static -debug -ipv6 -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
