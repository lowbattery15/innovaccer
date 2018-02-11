#!/bin/bash
clear
echo "This is a tool to sort the files on Desktop on the basis of file extension and move them in
separate folders in Documents folder."

search_dir="~/Documents/web"
dest_dir="~/Documents/tes"
stat -c "%n" $search_dir/* >gargi.txt
while read A;do
if [[ -f $A ]]; then
	filename=$(basename "$A")
	ext="${filename##*.}"
if [[ -d $dest_dir/$ext ]];then
	mv $A $dest_dir/$ext
else 
	mkdir $dest_dir/$ext
	mv $A $dest_dir/$ext
fi
fi
done<gargi.txt
rm gargi.txt