#!/bin/bash

echo "The current directory is:"
pwd

echo "The user logged in is:"
whoami

sudo make uninstall

sudo make distclean

./configure --prefix=/usr --sysconfdir=/etc/opensc

sudo make -j2

sudo make install
