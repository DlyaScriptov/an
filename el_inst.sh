#!/bin/bash

apt-get update
aptapt-get -y -q install software-properties-common apt-transport-https curl
curl -fSsL https://packages.element.io/debian/element-io-archive-keyring.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/element-io-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/element-io-archive-keyring.gpg] https://packages.element.io/debian/ default main" | sudo tee /etc/apt/sources.list.d/element-io.list
apt-get update
apt-get -y -q install element-desktop
