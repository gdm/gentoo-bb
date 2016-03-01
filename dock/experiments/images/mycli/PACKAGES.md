### experiments/mycli:20160211
Built: Mon Feb 22 02:55:39 CET 2016

Image Size: 112.2 MB
#### Installed
Package | USE Flags
--------|----------
app-misc/ca-certificates-20140927.3.17.2 | `cacert`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/openssl-1.0.2f | `asm bindist tls-heartbeat zlib -gmp -kerberos -rfc3779 -sctp -static-libs {-test} -vanilla`
sys-apps/debianutils-4.4 | `-static`
sys-libs/zlib-1.2.8-r1 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
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
