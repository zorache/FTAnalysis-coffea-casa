#!/bin/bash

voms-proxy-init

cat Samples.txt | while read line; do
    name=$(cut -d/ -f2 <<<"$line")
    echo "$name"
    dasgoclient -query="file dataset=$line" >> $name.txt
done
