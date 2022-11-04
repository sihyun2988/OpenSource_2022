#!/bin/bash

echo "연산할 첫 번째 숫자를 입력하시오"
read a

echo "연산할 두 번째 숫자를 입력하시오"
read b

echo "연산자를 입력하시오(+, -)"
read opr

result=`expr $a $opr $b`

echo $result 
exit 0
