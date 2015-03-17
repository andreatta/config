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

# delete ignored files from git if rules applied later
git rm --cached filename

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

# set fixed IP
ip addr add 192.168.112.111/24 dev enp0s25

#################################
# TMUX
#################################
# pairing sessions over SSH
# create socket to share and set rights
tmux -S /tmp/tmux new -d -s pair
chmod 777 /tmp/tmux

# connect to shared socket from other device (over ssh)
tmux -S /tmp/tmux attach

#################################
# SAMBA
#################################
# list directories
smbclient -L <SERVER>

# connect
smbclient '\\<SERVER>\<FOLDER>'

#################################
# NFS
#################################
# list NFS shares on server
showmount -e <SERVER-IP>

# mount NFS share
sudo mount -t nfs <SERVER>:<PATH> </mountpoint/on/client>
