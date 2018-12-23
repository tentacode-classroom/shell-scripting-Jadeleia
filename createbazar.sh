#!/bin/bash
rm -r -f 
mkdir -p bazar/Bureau/secret
mkdir -p bazar/Download

touch bazar/Bureau/secret/journal_intime.txt

wget https://i.pinimg.com/originals/5a/d1/59/5ad159c81a405591543ce19b824f8c3e.jpg \
       	-q -O bazar/Bureau/Kaneki.jpg
touch -t 201801301700 bazar/Bureau/Kaneki.jpg

wget https://ctl.s6img.com/society6/img/t3t1V9kTvdn4ZJZaqwDLuveZ3rw/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/6d4d8042dad74882b8c8007b976ea705/~~/tokyo-ghoulre-kirishima-touka-prints.jpg \
       	-q -O bazar/Bureau/secret/Touka.jpg

wget https://i.pinimg.com/originals/bf/5d/67/bf5d6747fbaa61f60d4429f259ed17ff.jpg \
	-q -O bazar/Download/Suzuya.jpg

wget https://i.pinimg.com/originals/3a/29/c9/3a29c9755bb17632da030f54dce98c2a.png \
	-q -O bazar/Download/Kotaro.jpg

wget https://www.youtube.com/watch?v=Ul7KuvZRmhI \
	-q -O bazar/Bureau/secret/KanekivsJason.mp4

