#!/bin/zsh

set -euo pipefail

readonly ROOT_PASS="mypass"
usermod -p "$(openssl passwd -1 -salt 5RPVAd ${ROOT_PASS})" root

# sudo security set-keychain-password -o oldpassword -p newpassword /Users/username/Library/Keychains/login.keychain

echo "${ROOT_PASS}" | sudo -v -S

sudo echo "something1"
/bin/bash -c "/usr/bin/sudo echo something2"
/bin/bash -c "if ! /usr/bin/sudo echo something3;then echo something4;fi"
