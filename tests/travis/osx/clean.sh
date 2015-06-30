#!/bin/bash

cho "Remove software and configs preinstalled on the Mac OS X Build Environment..."

rm $HOME/.profile

_rvm_unload
rm -rf $HOME/.rvm

