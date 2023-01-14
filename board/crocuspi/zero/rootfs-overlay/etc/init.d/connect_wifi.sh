#!/bin/ sh
insmod /usr/lib/esp8089.ko esp_reset_gpio=142#add driver
sleep 1
ifconfig wlan0 up #Open wifi
wpa_supplicant -B -d -i wlan0 -c /etc/wpa_supplicant.conf #search wifi
sleep 2
udhcpc -i wlan0 #Connect wifi
