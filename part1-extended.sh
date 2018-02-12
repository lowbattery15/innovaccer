##Author:Gargi Gupta
#!/bin/bash
clear
echo "This is a tool to identify top n files which have the largest size on system"

read -p "Enter the path of folder to clean up(eg: /home/$USER/*)" name
read -p "Enter the number of lines to be displayed(eg: /home/$USER/*)" lines
cd $name

stat -c "%n" * -t >~/Desktop/gargi.txt
## iterate through directory
while read A;do
if [[ -d $A ]]; then
find ./${A} -type f |sort -r -h|head -n$lines
fi
done <~/Desktop/gargi.txt
rm ~/Desktop/gargi.txt
