#!/usr/bin/env bash

apt-get update
apt-get install -y git

# install pip
TMP_PIP=/tmp/pip
if [ ! -e "${TMP_PIP}" ]; then
    mkdir $TMP_PIP
fi
wget "https://bootstrap.pypa.io/get-pip.py" -P $TMP_PIP
python $TMP_PIP/get-pip.py
rm -rf $TMP_PIP

# install OpenWhisk CLI
pip install --upgrade https://new-console.ng.bluemix.net/openwhisk/cli/download