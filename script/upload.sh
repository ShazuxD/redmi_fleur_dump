#!/bin/bash
source $CONFIG
cd /tmp/ci/out/target/product/$DEVICE
ls
curl --upload-file $OUTPUT https://free.keep.sh
wget https://github.com/Sushrut1101/GoFile-Upload/raw/master/upload.sh
chmod +x upload.sh
sudo apt install jq -y
./upload.sh $OUTPUT
