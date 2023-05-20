#!/bin/sh

#fondo de pantalla
feh --bg-fill /home/$USER/.config/qtile/wallpaper.jpg
picom &
udiskie -t &

#configuracion de teclado
sleep 3
setxkbmap latam &
