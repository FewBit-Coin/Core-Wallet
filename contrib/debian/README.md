# Debian

This directory contains files used to package fewbitd/fewbit-qt
for Debian-based Linux systems. If you compile fewbitd/fewbit-qt yourself, there are some useful files here.

## fewbit: URI support

fewbit-qt.desktop (Gnome / Open Desktop)
To install:

    sudo desktop-file-install fewbit-qt.desktop
    sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your fewbit-qt binary to `/usr/bin`
and the `../../share/pixmaps/fewbit128.png` to `/usr/share/pixmaps`

fewbit-qt.protocol (KDE)

