cd /tmp/

wget www.kernel.org/pub/linux/bluetooth/bluez-5.8.tar.xz
unxz bluez-5.8.tar.xz
tar xvf bluez-5.8.tar
cd bluez-5.8

./configure --disable-systemd
make
make install

cd -
rm -rf bluez-*