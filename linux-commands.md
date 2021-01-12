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
