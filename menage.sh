#!/bin/bash
CURRENT_DIRECTORY='dirname $0'
echo current : $CURRENT_DIRECTORY

rm -rf $CURRENT_DIRECTORY/../bazar_clean

mkdir -p $CURRENT_DIRECTORY/../bazar_clean/images
mkdir -p $CURRENT_DIRECTORY/../bazar_clean/videos
mkdir -p $CURRENT_DIRECTORY/../bazar_clean/divers

FILES='find $CURRENT_DIRECTORY/../bazar -type f'

for FILE in $FILES
do
	echo $FILE
	if [file "$FILE" | grep _qE "image data"]
	then
		mkdir -p bazar_clean/images
		cp $FILE $CURRENT_DIRECTORY/bazar_clean/images
	elif [file "$FILE" | grep -qE "Media"]
	then mkdir -p bazar_clean/videos
		cp $FILE $CURRENT_DIRECTORY/bazar_clean/videos
	else 
		mkdir -p bazar_clean/divers
		cp $FILE $CURRENT_DIRECTORY/bazar_clean/divers
	fi
done

rm -rf $1

