#!/bin/zsh

set -euo pipefail

readonly ROOT_PASS="mypass"

sudo echo "something0"

sudo /usr/bin/dscl . -passwd /Users/root "${ROOT_PASS}"
# sudo security set-keychain-password -o "" -p "${ROOT_PASS}" /Users/root/Library/Keychains/login.keychain-db

echo "Updated password"

echo "${ROOT_PASS}" | sudo -S -v
# echo "Password cached"

sudo echo "something1"
/bin/bash -c "/usr/bin/sudo echo something2"
/bin/bash -c "if ! /usr/bin/sudo echo something3;then echo something4;fi"
