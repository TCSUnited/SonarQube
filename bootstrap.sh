#!/bin/bash
set -e

echo "Installing dependencies..."

# Install the submodules
git submodule update --init

# Install the dependencies
pod install

# Create the iOctocatAPI.plist file by copying the sample
if [ ! -f iOctocatAPI.plist  ]
then
  cp iOctocatAPI{.sample,}.plist
fi

# Create the HockeySDK.plist file by copying the sample:
if [ ! -f HockeySDK.plist  ]
then
  cp HockeySDK{.sample,}.plist
fi

echo "Installed dependencies :)"
