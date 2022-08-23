#!/bin/bash
clear
sudo rmmod openvswitch
./boot.sh
./configure --prefix=/usr --localstatedir=/var --sysconfdir=/etc --with-linux=/lib/modules/$(uname -r)/build
make clean
make
sudo make install
sudo make modules_install
sudo modprobe openvswitch
