#!/bin/zsh

set -euo pipefail

readonly ROOT_PASS="mypass"

sudo /usr/bin/dscl . -passwd /Users/root "${ROOT_PASS}"
echo "Updated password"

echo "${ROOT_PASS}" | sudo -v -S
echo "Password cached"

sudo echo "something1"
/bin/bash -c "/usr/bin/sudo echo something2"
/bin/bash -c "if ! /usr/bin/sudo echo something3;then echo something4;fi"
