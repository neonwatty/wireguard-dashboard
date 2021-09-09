#!/bin/bash

# set env vars
export SERVER_PRIVATE_KEY=$(cat /etc/wireguard/privatekey)
echo export SERVER_PRIVATE_KEY=$SERVER_PRIVATE_KEY >> ~/.bashrc
source ~/.bashrc

# sub in vars in template .conf
envsubst < /etc/wireguard/wg0_template.conf > /etc/wireguard/wg0.conf 

# clean up template
rm /etc/wireguard/wg0_template.conf