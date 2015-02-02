#!/bin/bash

if [ "$#" -ne 1 ]; then
    	echo "script takes json file as an argument"
	exit 1;
fi

curl -X POST -H "Content-Type: application/json" dev.squeakcloud.com:8080/v2/apps -d@"$@"
