#!/bin/bash

echo "Remove software and configs preinstalled on the Linux Build Environment..."

rm $HOME/.profile

_rvm_unload
rm -rf $HOME/.rvm

rm -rf $HOME/.nvm

