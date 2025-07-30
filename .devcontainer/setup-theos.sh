#!/bin/bash
set -e

# Install dependencies
sudo apt update
sudo apt install -y git make clang perl dpkg ldid

# Clone Theos
git clone --recursive https://github.com/theos/theos ~/theos
echo "export THEOS=~/theos" >> ~/.bashrc
source ~/.bashrc

# Install iOS SDKs (example: iOS 16.5 SDK)
mkdir -p ~/theos/sdks
curl -L https://github.com/theos/sdks/archive/refs/heads/master.zip -o sdks.zip
unzip sdks.zip -d ~/theos
rm sdks.zip
