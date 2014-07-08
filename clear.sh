#!/bin/sh

listfiles=`find ./ -name "*.c" -o -name "*.h"`

for file  in $listfiles
do 
./removeComment.sh $file > $file.bak
mv $file.bak $file
done

