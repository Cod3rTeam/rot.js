#!/bin/sh
LIST="
rot.js
rng.js
display.js
js/array.js
js/date.js
js/number.js
js/string.js
js/object.js
js/function.js
map/map.js
map/arena.js
map/dividedmaze.js
"

ID=$(hg id -i)
TARGET=../rot.js
rm -f $TARGET

PROLOGUE="/*
	This is rot.js, the ROguelike Toolkit in JavaScript.
	Generated on $(date) from changeset $ID.
*/
"
echo "$PROLOGUE" >> $TARGET

for FILE in $LIST; do
	cat $FILE >> $TARGET
done
