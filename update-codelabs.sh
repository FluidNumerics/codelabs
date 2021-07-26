#!/bin/bash


while read l; do
        app=$(echo $l | awk -F " : " '{print $1}')
        subdir=$(echo $l | awk -F " : " '{print $2}')
	echo $subdir
        docid=$(echo $l | awk -F " : " '{print $3}')
	claat export $docid
	mkdir -p $app
	if [ -d "$app/$path" ]; then
		rm -rf $app/$path
	fi
	mkdir -p $app/$subdir
	mv $subdir $app/$subdir
done <docs.txt 
