#!/bin/bash
clear
echo "This is a tool to identify top 10 files which have the largest size on system"

read -p "Enter the path of folder(eg: /home/$USER/*)" name
cd $name

stat -c "%n" * -t >~/Desktop/gargi.txt
while read A;do
if [[ -d $A ]]; then
find ./${A} -type f |sort -r -h|head -n10
fi
done <~/Desktop/gargi.txt
rm ~/Desktop/gargi.txt
