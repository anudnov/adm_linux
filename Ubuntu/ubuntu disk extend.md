```
apt-get install -y cloud-initramfs-growroot
```
### Or
```
apt install cloud-initramfs-growroot
```
#### Start:
```
lsblk
```
```
echo "1" > /sys/class/block/sda/device/rescan
```
```
lsblk
```
```
growpart /dev/sda 3
```
```
pvdisplay
```
```
vgdisplay
```
```
pvresize /dev/sda3
lvextend -r -l +100%FREE /dev/ubuntu-vg/ubuntu-lv

```
```
lvdisplay
```
```
resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv
df -h
```
