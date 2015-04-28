### gentoobb/nginx-proxy-conf:20150409
Built: Tue Apr 21 13:35:26 CEST 2015

Image Size: 17.69 MB
#### Installed
Package | USE Flags
--------|----------
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `-doc -ipv6 -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
*manual install*: entr-3.2 | http://entrproject.org/
*manual install*: docker-gen-0.3.9 | http://github.com/jwilder/docker-gen/
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb/glibc** |
sys-apps/gentoo-functions-0.8 | ``
sys-libs/glibc-2.20-r2 | `hardened -debug -gd (-multilib) -nscd -profile (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2015a | `nls -right`

#### Purged
- [x] Headers
- [x] Static Libs
