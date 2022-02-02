#!/bin/bash


while read l; do

        app=$(echo $l | awk -F " : " '{print $1}')
        docid=$(echo $l | awk -F " : " '{print $2}')
	./bin/claat export $docid

done <docs.txt 
