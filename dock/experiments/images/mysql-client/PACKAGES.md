### experiments/mysql-client:20160211
Built: Fri Feb 19 14:22:10 CET 2016

Image Size: 90.76 MB
#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r6 | `-static -static-libs`
app-shells/bash-4.3_p42-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins -vanilla`
dev-db/mysql-5.6.28 | `openssl -debug -embedded -extraengine -jemalloc -latin1 (-libressl) -perl -profiling (-selinux) -server -static -static-libs -systemtap -tcmalloc {-test} -yassl`
dev-libs/iniparser-3.1-r1 | `-doc -examples -static-libs`
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
