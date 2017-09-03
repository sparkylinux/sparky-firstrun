#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /etc/xdg/autostart/sparky-firstrun.desktop
	rm -f /usr/bin/sparky-firstrun
	rm -f /usr/bin/sparky-firstrun-del
	rm -f /usr/bin/sparky-firstrun-exe
	rm -f /usr/share/applications/sparky-firstrun.desktop
	rm -f /usr/share/menu/sparky-firstrun
	rm -rf /usr/share/icons/sparky/firstrun
	rm -rf /usr/share/sparky/sparky-firstrun
else
	cp share/sparky-firstrun.desktop /etc/xdg/autostart/
	cp bin/* /usr/bin/
	cp share/sparky-firstrun.desktop /usr/share/applications/
	cp share/sparky-firstrun /usr/share/menu/
	if [ ! -d /usr/share/icons/sparky/firstrun ]; then
		mkdir -p /usr/share/icons/sparky/firstrun
	fi
	cp icons/* /usr/share/icons/sparky/firstrun/
	if [ ! -d /usr/share/sparky/sparky-firstrun ]; then
		mkdir -p /usr/share/sparky/sparky-firstrun
	fi
	cp lang/* /usr/share/sparky/sparky-firstrun/
fi
