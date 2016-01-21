#!/usr/bin/env bash

set -e

DIR=$(cd `dirname $0` && pwd)

function doSetup() {
  ln -sf $DIR/.atom ~/.atom
  if [ ! -d ~/.atom/packages/parcel ]; then
    if which apm 2>&1 >/dev/null; then
      apm install parcel
    fi
  fi    
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doSetup
else
  read -p "This process may over-write existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doSetup
  fi
fi
unset doSetup
