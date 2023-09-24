#!/bin/bash

echo "Starting benchmark"


# Do network testing
# curl "https://google.com"

export NPM_CONFIG_LOGLEVEL=silent

# time npm install

# rm -rf ./node_modules
# npm cache clean --force
# rm -f package-lock.json

du -d 1 -h .

mkdir -p /tmp/empty
cd /tmp/empty

pwd
npm install @babel/core@7.22.20 @babel/core@7.22.19 @babel/core@7.22.18 --no-save
npm install @babel/cli@7.22.20 --no-save
npm install @babel/preset-env@7.22.20 --no-save
du -d 1 -h /root
npm install core-js@3.32.2 core-js@3.32.1 core-js@3.32.0 --no-save
npm install node-sass@9.0.0 --no-save
npm install chrome@0.1.0 --no-save
npm list
du -d 1 -h /root

cd /root

rm -rf ./node_modules
rm -f package-lock.json

tshark -i eth0 -w /root/capture.pcap -q &
sleep 1

time npm install

sleep 1
pkill tshark

tshark -n -r /root/capture.pcap -q -z endpoints,ip

du -d 1 -h .