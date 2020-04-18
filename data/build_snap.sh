#!/bin/bash

DIR=$(dirname "$(readlink -f "$0")")

echo "Copy snapcraft.yaml to base directory"
cd $DIR
cp snapcraft.yaml ..
cd ..

SNAPCRAFT_BUILD_ENVIRONMENT_CPU=4 SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=5G snapcraft
sudo snap install --dangerous urh*.snap
urh
