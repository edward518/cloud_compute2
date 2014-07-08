#!/bin/sh

listfiles=`find ./ -name "*.c" -o -name "*.h"`

for file  in $listfiles
do 
filename=${file##*/} 
path=${file%/*}
echo $filename
mv $file $path/idb_obf_$filename
done

