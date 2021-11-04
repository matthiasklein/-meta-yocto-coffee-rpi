#!/bin/bash

PATH_REPO_YOCTO_LAYER="$( cd "$( dirname "$( dirname "$( readlink -f ${BASH_SOURCE[0]})" )" )" &> /dev/null && pwd )"
PATH_YOCTO_BASE="$( dirname "$( dirname "$( readlink -f ${PATH_REPO_YOCTO_LAYER})" )" )"
CONF_DIR="${PATH_REPO_YOCTO_LAYER}/conf"

if [ ! -f "${CONF_DIR}/local.conf.sample" ]; then
    echo >&2 "ERROR: ${CONF_DIR}/local.conf.sample does not exist !"
    exit 1
fi

if [ -z ${BUILDDIR} ];
then
  echo >&2 "ERROR: BUILDDIR variable not set! Please source yocto environment ..."
  exit 1
fi

echo "overwriting build configuration ..."
cp ${CONF_DIR}/local.conf.sample ${BUILDDIR}/conf/local.conf
cp ${CONF_DIR}/bblayers.conf.sample ${BUILDDIR}/conf/bblayers.conf

echo ""
echo "please apply changes with: source setup-environment"
