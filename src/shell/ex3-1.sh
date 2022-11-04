#!/bin/sh

echo "몇 번 출력하겠습니까?"
read num

i=1
while [ $i -le $num ]
do
  echo "hello world"
  i=`expr $i + 1` 
done
exit 0
