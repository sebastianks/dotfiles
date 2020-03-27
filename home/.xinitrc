#!/bin/sh

for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
	[ -x "$f" ] && . "$f"
done
unset f

xrdb -merge -I$HOME .Xresources

# swap ctrl to caps
setxkbmap -layout us -option ctrl:nocaps

autorandr -c

# restore wallpaper
~/.fehbg &

# start ssh-agent
eval `ssh-agent`

exec i3
