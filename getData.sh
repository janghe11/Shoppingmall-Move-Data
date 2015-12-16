#!/bin/bash

#카테고리에 있는 view?no 목록 받아오기
for ((i=4; i<10; i++)); do
	getCate = wget http://hmscience.co.kr/goods/catalog?code=000$i
	getView =

	eval 'echo | sed ""' 
	
done

#view?no 지정
for ((i=0; i < 9999; i(++)); do
	wget http://hmscience.co.kr/goods/view?no=$i
	
done

#view?no 전체를 받는 사이트 변수 지정
getPage
