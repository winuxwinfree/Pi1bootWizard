#!/bin/bash
if zenity --question --width=440 --title='Rpi Fundation Updates ON OFF' --icon-name='info' --text="Do you want to allow updates made by the Raspberry Pi Fundation?"
    then
        sudo apt-mark unhold raspberrypi-bootloader raspberrypi-kernel raspberrypi-sys-mods raspberrypi-ui-mods rp-bookshelf rp-prefapps rpd-plym-splash rpi-eeprom rpi-update pi-bluetooth pi-greeter piclone pipanel pishutdown pixflat-icons firmware-brcm80211 firmware-libertas firmware-misc-nonfree firmware-realtek
        sleep 3
	else
        sudo apt-mark hold raspberrypi-bootloader raspberrypi-kernel raspberrypi-sys-mods raspberrypi-ui-mods rp-bookshelf rp-prefapps rpd-plym-splash rpi-eeprom rpi-update pi-bluetooth pi-greeter piclone pipanel pishutdown pixflat-icons firmware-brcm80211 firmware-libertas firmware-misc-nonfree firmware-realtek
	sleep 3
fi
if zenity --question --width=440 --title='Plasma Updates ON/OFF' --icon-name='info' --text="Do you want to allow Plasma updates?"
    then
        sudo apt-mark unhold baloo-kf5 plasma-desktop plasma-desktop-data plasma-integration plasma-workspace plasma-pa powerdevil
        sleep 3
	else
        sudo apt-mark hold baloo-kf5 plasma-desktop plasma-desktop-data plasma-integration plasma-workspace plasma-pa powerdevil
	sleep 3
fi


sudo service dhcpcd restart
sudo piwiz
