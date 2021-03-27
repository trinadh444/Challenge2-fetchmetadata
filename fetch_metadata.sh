#!/bin/sh
### ./fetch_metadata.sh 10.20.10.15 all #######
### ./fetch_metadata.sh 10.20.10.15 ami-id #########
ipaddress=$1
if  [[ $2 = "ami-id" ]]; then
    curl -s http://${ip_address}/latest/meta-data/ami-id
elif [[ $2 = "ami-launch-index" ]]; then
    curl -s http://${ip_address}/latest/meta-data/ami-launch-index
elif [[ $2 = "instance-id" ]]; then
    curl -s http://${ip_address}/latest/meta-data/instance-id
elif [[ $2 = "instance-type" ]]; then
    curl -s http://${ip_address}/latest/meta-data/instance-type
elif [[ $2 = "local-hostname" ]]; then
    curl -s http://${ip_address}/latest/meta-data/local-hostname
elif [[ $2 = "local-ipv4" ]]; then
    curl -s http://${ip_address}/latest/meta-data/local-ipv4
elif [[ $2 = "kernel-id" ]]; then
    curl -s http://${ip_address}/latest/meta-data/kernel-id
elif [[ $2 = "availability-zone" ]]; then
    curl -s http://${ip_address}/latest/meta-data/availability-zone
elif [[ $2 = "public-hostname" ]]; then
    curl -s http://${ip_address}/latest/meta-data/public-hostname
elif [[ $2 = "public-ipv4" ]]; then
    curl -s http://${ip_address}/latest/meta-data/public-ipv4
elif [[ $2 = "ramdisk-id" ]]; then
    curl -s http://${ip_address}/latest/meta-data/ramdisk-id
elif [[ $2 = "security-groups" ]]; then
    curl -s http://${ip_address}/latest/meta-data/security-groups
elif [[ $2 = "ami-launch-index" ]]; then
    curl -s http://${ip_address}/latest/meta-data/ami-launch-index
elif [[ $2 = "all" ]]; then
    curl -s http://${ip_address}/latest/meta-data/ami-id
	curl -s http://${ip_address}/latest/meta-data/ami-launch-index
	curl -s http://${ip_address}/latest/meta-data/instance-id
	curl -s http://${ip_address}/latest/meta-data/instance-type
	curl -s http://${ip_address}/latest/meta-data/local-hostname
	curl -s http://${ip_address}/latest/meta-data/kernel-id
	curl -s http://${ip_address}/latest/meta-data/local-ipv4
	curl -s http://${ip_address}/latest/meta-data/availability-zone
	curl -s http://${ip_address}/latest/meta-data/public-hostname
	curl -s http://${ip_address}/latest/meta-data/public-ipv4
	curl -s http://${ip_address}/latest/meta-data/ramdisk-id
	curl -s http://${ip_address}/latest/meta-data/security-groups
	curl -s http://${ip_address}/latest/meta-data/ami-launch-index
else 
  echo "options are not valid. Use all to display full metadata or use the options ami-id, ami-launch-index , instance-id, instance-type, local-hostname, kernel-id,local-ipv4,availability-zone,public-hostname,public-ipv4,ramdisk-id,security-groups,ami-launch-index"
fi                                                                                                                                                                                            
