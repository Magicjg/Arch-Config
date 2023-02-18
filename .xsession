#!/bin/sh

userresources=$HOME/ .Xresources
usermodmap=$HOME/ .Xmodmap
sysresources=/etc/X11/xinit/ .Xresources
sysmodmap=/etc/X11/xinit/ .Xmodmap

#marge in defaults and keymap

if [ -f $sysresources ]; then
    xrdb -marge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -marge "$userresources"
fi

if [ -f "usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs 

if [ -d /etc/X11/xinit/xinitrc.d] ; then
    for f in /etc/X11/xinit/xinitrc.d/?.sh ; do
        [ -x "$f" ] && . "$f"
    done 
    unset f
fi

#teclado en espanol
setxkbmap latam &
#resolucion
xrandr -s 1360x768 &
picom &
#icono de volumen
volumeicon &
nm-applet &
#audio
pulseaudio &
udiskie -t &

feh --bg-fill .config/qtile/Wall/fondo.png

