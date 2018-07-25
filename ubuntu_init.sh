#!/bin/bash

#update os & install software
apt-get update -y
apt install -y lrzsz tree htop python-pip git wget telnet vim unzip 

#useradd eosio
useradd -m -s /bin/bash eosio
echo "eosio:111111" | chpasswd

#
mkdir -p /data/eos-config
mkdir -p /data/eos-data
touch /data/eos-config/genesis.json
touch /data/eos-config/config.ini
touch /data/eosio.log
touch /data/eoskeeper.log

chown -R eosio.eosio /data

#
cd /usr/local/bin/
wget https://s3-ap-northeast-1.amazonaws.com/eosnodeosversion/nodeos_1.0.8.tar.gz
tar xf nodeos_1.0.8.tar.gz

#
mkdir -p /usr/lib/systemd/system/
touch /usr/lib/systemd/system/eosio.service 
cat > /usr/lib/systemd/system/eosio.service <<eof 
[Unit]
Description=eosio

[Service]
User=eosio
ExecStart=/bin/bash -c "/usr/local/bin/nodeos --config-dir /data/eos-config -d /data/eos-data > /data/eosio.log  2>&1"
Restart=always

[Install]
WantedBy=multi-user.target
eof


#
hostname bakserver
echo bakserver > /etc/hostname


#clone eosio
mkdir -p /opt/EOS-Mainnet && cd /opt/EOS-Mainnet
git clone https://github.com/EOS-Mainnet/eos.git --recursive