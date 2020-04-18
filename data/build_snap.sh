#!/bin/bash

SNAPCRAFT_BUILD_ENVIRONMENT_CPU=4 SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=5G snapcraft
sudo snap install --dangerous urh*.snap
urh
