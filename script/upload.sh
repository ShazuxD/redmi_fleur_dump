#!/bin/bash
source $CONFIG
cd /tmp/ci/out/target/product/$DEVICE
ls
curl --upload-file $OUTPUT https://free.keep.sh
ls
cd /tmp
com () 
{ 
    tar --use-compress-program="pigz -k -$2 " -cf $1.tar.gz $1
}

time com ccache 1
curl bashupload.com -T ccache*.gz
