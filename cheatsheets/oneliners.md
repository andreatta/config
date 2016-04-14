# get IP of local network
ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'

# get external IP
curl -s icanhazip.com

# convert images
# http://www.howtogeek.com/109369/how-to-quickly-resize-convert-modify-images-from-the-linux-terminal/

# width 200
convert example.png -resize 200 example.png

# height 200
convert example.png -resize 200 example.png

# exact size
convert example.png -resize 200×100! example.png

# find executables under current path
find . -type f -executable -print

# netcat receive hexadecimal values
nc -l -p <PORT> | xxd

# list available fonts:
fc-list

# reload font cache
fc-cache -f -v

# check integrity of /etc/passwd
pwck

# fix /etc/passwd (say yes on prompt)
grpck

# convert jpg to png (with imagemagick)
convert picture.{jpg,png}
convert -resize 50% picture.png picture.png
convert example.png -resize 200×100 example.png
convert example.png -resize x100 example.png
convert example.jpg -rotate 90 example-rotated.jpg

# base64
base64 -d <<< <BASE64STRING>

# bash: reuse last parameter
!$ # or $_

# get more than one parameter
!:1-2

# show what takes so long to boot
systemd-analyze blame

# delete (Xth) specific line from file
# good if SSH key has changed
sed -i 'Xd' ~/.ssh/known_hosts

# get external IP
wget -q -O - http://showip.spamt.net/

# play DVDs
sudo pacman -S libdvdcss libdvdread libdvdnav

# add user to additional group
usermod -aG <GROUP> $USER

# pacman
# add GPG key to be able to install from AUR
gpg --recv-keys KEYID

# EFI stub

# list current boot menu
bootmgr -v

# remove entry from menu
efibootmgr -B -b<hex>

# add entry to EFI stub boot menu
efibootmgr -d /dev/sdX -p Y -c -L "Arch Linux" -l /vmlinuz-linux -u "root=/dev/sda2 rw initrd=/initramfs-linux.img"
# Where X and Y are changed to reflect the disk and partition where the ESP is located. Change the root= parameter to reflect your Linux root (disk UUIDs can also be used).
sudo efibootmgr -d /dev/sda -p 1 -c -L "Arch 4.0.5" -l /vmlinuz-linux-405 -u "root=/dev/sda2 rm initrd=/initramfs-linux.img"

# IP address handling

# set static IP
ip addr add 192.168.112.111/24 dev enp0s25

# remove IP address
ip addr delete 192.168.112.111/24 dev enp0s25

# replace IP
ip addr replace 192.168.112.112/24 dev enp0s25

# TMUX
# pairing sessions over SSH
# create socket to share and set rights
tmux -S /tmp/tmux new -d -s pair
chmod 777 /tmp/tmux

# connect to shared socket from other device (over ssh)
tmux -S /tmp/tmux attach

# SAMBA
# list directories
smbclient -L <SERVER>

# connect
smbclient '\\<SERVER>\<FOLDER>'

# NFS
# list NFS shares on server
showmount -e <SERVER-IP>

# mount NFS share
sudo mount -t nfs <SERVER>:<PATH> </mountpoint/on/client>

