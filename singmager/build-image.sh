#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

rm -rf /tmp/test
singularity build --sandbox /tmp/test /data/p/photo/metaphoto/singimager/ubuntu-metaphoto.def

echo "singularity shell --writable /tmp/test"

