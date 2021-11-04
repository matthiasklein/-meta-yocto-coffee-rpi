#!/bin/bash

echo "building yocto images ..."

PATH_REPO_YOCTO_LAYER="$( cd "$( dirname "$( dirname "$( readlink -f ${BASH_SOURCE[0]})" )" )" &> /dev/null && pwd )"
PATH_YOCTO_BASE="$( dirname "$( dirname "$( readlink -f ${PATH_REPO_YOCTO_LAYER})" )" )"

cd ${PATH_YOCTO_BASE}
source setup-environment

bitbake rpi-image-base
