# Firejail profile for slack
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/slack.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /var

noblacklist ${HOME}/.config/Slack
noblacklist ${HOME}/Downloads
noblacklist ~/.config/google-chrome
noblacklist ~/.cache/google-chrome
noblacklist /var

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

mkdir ${HOME}/.config
mkdir ${HOME}/.config/Slack
mkdir ~/.config/google-chrome
mkdir ~/.cache/google-chrome
whitelist ${HOME}/.config/Slack
whitelist ${HOME}/Downloads
whitelist ~/.config/google-chrome
whitelist ~/.cache/google-chrome
include /etc/firejail/whitelist-common.inc

caps.keep sys_module,sys_rawio,sys_chroot,sys_ptrace,sys_pacct,sys_admin,sys_boot,sys_nice,sys_resource,sys_time,sys_tty_config
name slack
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
shell none

disable-mnt
#private-bin slack
private-dev
private-etc asound.conf,ca-certificates,fonts,group,passwd,pulse,resolv.conf,ssl,ld.so.conf,ld.so.cache,localtime
private-tmp
