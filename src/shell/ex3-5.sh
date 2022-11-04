#!/bin/bash

read com

Linux () {
  echo "함수 안으로 들어왔음."
  command="ls ${com}"
  eval $command
  return 
}
echo "프로그램을 시작합니다."
Linux
echo "프로그램을 종료합니다."
exit 0
