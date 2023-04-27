#!/bin/bash
# Do not allow curl
source $CONFIG
curl_check=$(grep 'curl ' $CONFIG | wc -l)
if [[ $curl_check -gt 0 ]]; then
    echo -e "Please dont use \'curl\' in $CONFIG".
    exit 1
fi

#cd /tmp
#time aria2c $URL -x16 -s50
#time tar xf ccache.tar.gz
echo
