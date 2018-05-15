
# install rti dds

dds_file=$1

if [ -f $dds_file ]; then
  echo installing dds from $dds_file
else
  echo please set dds installer file
  exit 1
fi

rm -rf tmp
mkdir tmp
tar xvf rti_connext_dds_secure-5.3.0-eval-x64Linux3gcc5.4.0.tar.gz -C tmp
echo 123456 | sudo -S expect dds.expect
export NDDSHOME=/opt/rti_connext_dds-5.3.0
sudo cp rti_license.dat $NDDSHOME
sudo chmod 655 $NDDSHOME/rti_license.dat

echo export NDDSHOME=$NDDSHOME >> $HOME/.bashrc 

