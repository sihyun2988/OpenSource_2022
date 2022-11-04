#!/bin/bash

echo "폴더명을 입력하시오."
read folder

if [ -d $folder ]
then
  eval "ls" 
else
  mkdir $folder
fi

cd $folder
touch file0.txt
touch file1.txt
touch file2.txt 
touch file3.txt
touch file4.txt

mkdir /home/ubuntu/files/files
tar -cvf ${folder}.tar file0.txt file1.txt file2.txt file3.txt file4.txt
tar -xvf files.tar -C ./files/

exit 0
