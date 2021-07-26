#!/bin/bash


while read l; do
        path=$(echo $l | awk -F " : " '{print $1}')
	echo $path
        docid=$(echo $l | awk -F " : " '{print $2}')
	claat export $docid
done <docs.txt 
