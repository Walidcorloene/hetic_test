#!/bin/bash

i=0

while [ $i -le 256 ]
do
ping -c 1 10.93.161.$i >> /dev/null
    if [ $? -eq 0 ]
    then
       echo "10.93.161.$i">> online.txt
    else
       echo "10.93.161.$i">> offline.txt
    fi
let "i++"
done

echo "number of online`wc -l online.txt`"
echo "number of offline `wc -l offline.txt`"
