#!/bin/bash

# Instalación de qtile
sudo pacman -S xorg-server xorg-xinit --noconfirm
sudo pacman -S python-pip --noconfirm
sudo pacman -S python-xcffib python-cairocffi --noconfirm
sudo pacman -S wlroots --noconfirm
pip install qtile

# Instalación del gestor de sesiones X
sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm
sudo systemctl enable lightdm

# Instalación de algunas aplicaciones
sudo pacman -S picom feh dmenu konsole thunar rofi htop firefox git --noconfirm

# Instalación de los sensores
sudo pacman -S lm_sensors python-pip --noconfirm
sudo sensors-detect
pip install psutil

# Instalación de compatibilidad de 32 bits
sudo pacman -S lib32-libldap lib32-libxslt --noconfirm
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf
sudo pacman -Syu --noconfirm

# Instalación de audio
sudo pacman -S alsa-utils pulseaudio pavucontrol --noconfirm
