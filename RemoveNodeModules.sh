#!/bin/bash

if [ -n "$(git diff --name-only HEAD^ HEAD package.json)" ]; then
    echo "Detected changes in package.json. Running npm install..."
    rm -rf node_modules
    npm install
else
    echo "No changes in package.json."
fi
