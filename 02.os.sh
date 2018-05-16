
echo 123456 | sudo -S mount /dev/sr0 /media/cdrom0
sudo bash /media/cdrom0/autorun.sh
sudo usermod -a -G vboxsf user

# install boost
sudo aptitude -y install libboost1.62-all-dev

# install google test
sudo aptitude -y install googletest

# build googletest
mkdir gt
pushd gt
cmake /usr/src/googletest
make
sudo make install
popd
rm -rf gt

# install visual studio code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo chmod 644 /etc/apt/trusted.gpg.d/microsoft.gpg
sudo bash -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install -y code

