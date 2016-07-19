#!/usr/bin/env bash


# Python 2.7.10:
wget http://python.org/ftp/python/2.7.10/Python-2.7.10.tar.xz
tar xf Python-2.7.10.tar.xz
cd Python-2.7.10
./configure --prefix=/usr/local --enable-unicode=ucs4 --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make && make altinstall



# Python 3.4.3:
wget http://python.org/ftp/python/3.4.3/Python-3.4.3.tar.xz
tar xf Python-3.4.3.tar.xz
cd Python-3.4.3
./configure --prefix=/usr/local --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make && make altinstall
