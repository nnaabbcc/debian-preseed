
echo 123456 | sudo -S mount /dev/sr0 /media/cdrom0
sudo bash /media/cdrom0/autorun.sh
usermod -a -G vboxsf user

