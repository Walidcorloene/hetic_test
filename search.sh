#!/bin/bash


read -p "Enter the search pattern" pattern
if [ -f "$fname" ]
then
    result=$(grep -i "$pattern"  ~/usr/)
    echo "$result"
fi

