#!/bin/bash

echo "몸무게를 입력하시오."
read weight

echo "키를 입력하시오."
read height
height=$(echo "$height / 100" |bc -l )
echo $height

BMI=$(echo "$weight / ( $height * $height )" |bc )
echo $BMI
if [ "$(echo "$BMI < 18.5" | bc)" -eq 1 ]
then
  echo "저체중입니다."
elif [ $BMI -ge 23 ]
then
  echo "과체중입니다."
else
  echo "정상체중입니다."
fi
exit 0
