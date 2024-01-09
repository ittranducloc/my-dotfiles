#! /usr/bin/env bash
echo "=========Install mongodb shell"
cd /tmp
wget https://downloads.mongodb.com/compass/mongodb-mongosh_2.1.1_amd64.deb
sudo dpkg -i ./mongodb-mongosh_2.1.1_amd64.deb
rm -rf ./mongodb-mongosh_2.1.1_amd64.deb
mongosh --version
