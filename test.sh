#!/bin/zsh

set -euo pipefail

usermod -p 'mypass' root

# sudo security set-keychain-password -o oldpassword -p newpassword /Users/username/Library/Keychains/login.keychain

echo "mypass" | sudo -v -S

sudo echo "something1"
/bin/bash -c "/usr/bin/sudo echo something2"
/bin/bash -c "if ! /usr/bin/sudo echo something3;then echo something4;fi"
