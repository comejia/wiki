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

