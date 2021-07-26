#!/bin/bash


while read l; do

        app=$(echo $l | awk -F " : " '{print $1}')
        subdir=$(echo $l | awk -F " : " '{print $2}')
        docid=$(echo $l | awk -F " : " '{print $3}')
	claat export $docid

	mkdir -p $app
	if [ -d "$app/$subdir" ]; then
		rm -rf $app/$subdir
	fi
	#mkdir -p $app/$subdir
	mv $subdir/ $app/

done <docs.txt 
