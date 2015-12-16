#!/bin/bash

#카테고리에 있는 view?no 목록 받아오기

getCate=/home/jang/Projects/hmscience/catalog_code
getView=/home/jang/Projects/hmscience/getView.log

#카테고리 code를 얻기 위한 변수 codeNum 생성
codeNum=4

while [ "$codeNum" -lt 10 ]
do
	wget -P $getCate "http://hmscience.co.kr/goods/catalog?code=000$codeNum"
	sed -n '/.view?no/p' $getCate/catalog?code=000$codeNum >> $getView
	codeNum=$((codeNum+1))
done

wget -P $getCate "http://hmscience.co.kr/goods/catalog?page=2&code=0005"
sed -n '/.view?no/p' "$getCate/catalog?page=2&code=0005" >> $getView

#view?no의 숫자를 얻어오기
viewNumPrepend=\/view\?no"="
viewNum=/home/jang/Projects/hmscience/viewNum.log

echo "$getView" | sed -e 's/[v][i][e][w][?][n][o][=][0-9][0-9]/ &/'

#echo'expr $getView

#"[v][i][e][w][?][n][o][=][0-9][0-9]"
#"[v][i][e][w][?][n][o][=][0-9][0-9][0-9]"
#"[v][i][e][w][?][n][o][=][0-9][0-9][0-9][0-9]"
