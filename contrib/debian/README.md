
Debian
====================
This directory contains files used to package lqxd/lqx-qt
for Debian-based Linux systems. If you compile lqxd/lqx-qt yourself, there are some useful files here.

## lqx: URI support ##


lqx-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install lqx-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your lqx-qt binary to `/usr/bin`
and the `../../share/pixmaps/lqx128.png` to `/usr/share/pixmaps`

lqx-qt.protocol (KDE)

