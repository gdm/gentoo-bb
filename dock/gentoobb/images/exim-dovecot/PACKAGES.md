### gentoobb/exim-dovecot:20150423
Built: Tue Jun  9 01:11:15 CEST 2015

Image Size: 48.05 MB
#### Installed
Package | USE Flags
--------|----------
app-admin/metalog-3-r1 | `unicode`
app-arch/bzip2-1.0.6-r6 | `-static -static-libs`
dev-db/sqlite-3.8.9 | `readline -debug -doc -icu -secure-delete -static-libs -tcl {-test}`
dev-libs/cyrus-sasl-2.1.26-r9 | `berkdb ssl urandom -authdaemond -gdbm -java -kerberos -ldapdb -mysql -openldap -pam -postgres -sample -sqlite -srp -static-libs`
dev-libs/libpcre-8.35 | `bzip2 cxx readline recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -static-libs`
mail-filter/procmail-3.22-r10 | `mbox (-selinux)`
mail-mta/exim-4.84 | `dkim dnsdb dovecot-sasl maildir prdr sasl sqlite ssl tcpd -`
net-mail/dovecot-2.2.13-r1 | `bzip2 imapc maildir mbox sqlite ssl tcpd zlib -caps -cydir -doc -ipv6 -kerberos -ldap -lucene -lz4 -lzma -managesieve -mdbox -mysql -pam -pop3c -postgres -sdbox (-selinux) -sieve -solr -static-libs -suid -vpopmail`
net-mail/fetchmail-6.3.26-r2 | `nls ssl -hesiod -kerberos -socks -tk`
net-mail/mailbase-1.1 | `-pam`
sys-apps/tcp-wrappers-7.6.22-r1 | `-ipv6 -netgroups -static-libs`
sys-libs/db-4.8.30-r2 | `cxx -doc -examples -java -tcl {-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM gentoobb/bash** |
app-admin/eselect-1.4.4 | `-doc -emacs -vim-syntax`
app-shells/bash-4.2_p53 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins -vanilla`
net-misc/curl-7.42.0 | `ssl threads -adns -idn -ipv6 -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
sys-apps/file-5.22 | `zlib -python -static-libs`
sys-apps/sed-4.2.1-r1 | `acl nls (-selinux) -static`
sys-libs/ncurses-5.9-r3 | `cxx unicode -ada -debug -doc -gpm -minimal -profile -static-libs -tinfo -trace`
sys-libs/readline-6.2_p5-r1 | `-static-libs`
**FROM gentoobb/openssl** |
app-misc/ca-certificates-20140927.3.17.2 | `cacert`
dev-libs/openssl-1.0.1l-r1 | `bindist tls-heartbeat zlib -gmp -kerberos -rfc3779 -static-libs {-test} -vanilla`
sys-apps/acl-2.2.52-r1 | `nls -static-libs`
sys-apps/attr-2.4.47-r1 | `nls -static-libs`
sys-apps/coreutils-8.21 | `acl nls (xattr) -caps -gmp (-selinux) -static -vanilla`
sys-apps/debianutils-4.4 | `-static`
sys-libs/zlib-1.2.8-r1 | `-minizip -static-libs`
**FROM gentoobb/s6** |
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `-doc -ipv6 -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
*manual install*: entr-3.2 | http://entrproject.org/
**FROM gentoobb/glibc** |
sys-apps/gentoo-functions-0.8 | ``
sys-libs/glibc-2.20-r2 | `hardened -debug -gd (-multilib) -nscd -profile (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2015b | `nls -right`
#### Purged
- [x] Headers
- [x] Static Libs
