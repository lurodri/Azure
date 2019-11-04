#!/bin/bash

yum -y install gcc
wget http://download.redis.io/releases/redis-5.0.5.tar.gz
tar zxvf redis-5.0.5.tar.gz
cd redis-5.0.5
make MALLOC=libc all
make install

/usr/local/bin/redis-server &
