#!/bin/bash

du -a bazar/
rm -rf ./bazar_clean

mkdir ./bazar_clean/images
mkdir ./bazar_clean/video
mkdir ./bazar_clean/divers

FILES=`find bazar/ -type f ` 

for FILE in $FILES
do
	file $FILE | frep 'image data'
	IS_IMG=$?

	file $FILE | grep 'media'
	IS_VID=$?

	if [ $IS_IMG == 0 ]
	then
		cp $FILE bazar_clean/images

	elif [$IS_VID == 0 ]
	then 
		cp $FILE bazar_clean/video
	else
		cp $FILE bazar_clean/divers
	fi
done
