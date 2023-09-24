#!/bin/bash

echo "Starting benchmark"

# Do network testing
# curl "https://google.com"

export NPM_CONFIG_LOGLEVEL=silent

# mkdir -p /tmp/empty
# cd /tmp/empty

# pwd
# du -d 1 -h /root
# pnpm install @babel/core@7.22.20 -g
# pnpm install @babel/cli@7.22.20 -g
# pnpm install @babel/preset-env@7.22.20 -g
# pnpm install core-js@3.32.2 -g
# pnpm install node-sass@9.0.0 -g
# pnpm install chrome@0.1.0 -g
# du -d 1 -h /root

# cd /root

npm install

time pnpm import
# time pnpm install


# rm -rf ./node_modules
rm pnpm-lock.yaml

tshark -i eth0 -w /root/capture.pcap -q &
sleep 1

time pnpm install

sleep 1
pkill tshark

tshark -n -r /root/capture.pcap -q -z endpoints,ip

du -d 1 -h .