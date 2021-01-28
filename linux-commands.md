# Linux commands
The most commands are used in Debian os

## Update grup config
If you installed other os and it doesn't exist when you rebooted, try this:
```
# grub-mkconfig -o /boot/grub/grub.cfg
```

## Create booteable USB
1) Find the name of USB drive
```
$ lsblk
```

2) Umount the drive
```
# umount /dev/sdx1 # sdx1 is only an example. Replace it with your device name
```

3) Flash distro ISO image to the USB drive
```
# dd bs=4M if=/path/to/distro.iso of=/dev/sdx status=progress oflag=sync
```

## Delete old kernels
1) List all Linux kernel image
```
# dpkg --list | egrep -i --color 'linux-image|linux-headers'
```

2) Delete unused kernel images
```
# apt-get --purge autoremove linux-image-x.y.z-tt-abc
```

3) Update grub
```
# update-grub # or update-grub2
```

## Change default program version
I used python for this example

1) Update python alternatives list
```
# update-altenatives --list python
```
Command above shows an error like: `no alternatives for python`

2) List available python versions
```
$ ls /usr/bin/python*
```

3) Install python alternatives
```
# update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
# update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2
```
NOTE: the integer number at the end of each command denotes a priority. Higher number means higher priority

4) Switch between python versions
```
# update-alternatives --config python
```

## Search packages
```
$ apt-cache search package_name # search package_name
$ apt-cache show package_name # show all info of package_name
```

## Reinstall Grub
When you install a new S.O Linux the grub changes. So you need reinstall grub in the system that you want.
```
# grub-install --recheck /dev/sdX
# update-grub
```

## Network manager (without gui)
1) Install network manager
```
# apt-get install network-manager
```
If you have any problems with version of gcc, install:
```
# apt-get install gcc-8-base
```

2) Edit /etc/network/interfaces file about ethernet and wifi. Example:
```
auto lo
iface lo inet loopback

#allow-hotplug eno2
#iface eno2 inet dhcp
```

3) Allow to Networkmanager manage networks. Edit /etc/NetworkManager/NetworkManager.conf file
```
...
[ifupdown]
managed=true
```

4) Restart the service
```
# systemctl restart Networkmanager
```

`nmcli` is the command to manager networks. Here there are some utils commands:
- nmcli device status
- nmcli device show
- nmcli connection show
- nmcli device wifi list
- nmcli device wifi connect SSID-Name password wireless-password
- nmcli radio wifi off
- nmcli radio wifi on

## Syncing files
```
$ rsync -avzh local_files_path remote_path
```

`remote_path` can be other local path or a path in some remote server
```
$ rsync -avzh /tmp/backup/ user_name@192.168.1.xx:remote_path
```
NOTE: after to run above command you need enter the password of remote server


## Managing screen positions
1) List displays
```
$ xrandr
```

2) Set position
```
$ xrandr --output HDMI-X --auto --left-of eDP-Y
```


## Unpack files
```
$ tar -xzvf name_file.tar.gz
$ tar -xJvf name_file.tar.xz
```
