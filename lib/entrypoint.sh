#!/bin/sh

set -e

if [ -f package-lock.json ]
then
  npm install
elif [ -f yarn.lock ]
then
  yarn
fi

NODE_PATH=node_modules node /action/lib/run.js
