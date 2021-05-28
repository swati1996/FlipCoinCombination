#!/bin/bash 
declare -A  flipCoinResult
hhh=0
hht=0
hth=0
tht=0
htt=0
tht=0
tth=0
ttt=0

function flipCoin(){
for (( i=0; i<100; i++ ))
do
random1=$((RANDOM%2))
random2=$random1$((RANDOM%2))
random3=$random2$((RANDOM%2))

if [ $random3 == 111 ]
then
        flipCoinResult[hhh]=$((hhh++))
elif [ $random3 == 110 ]
then
        flipCoinResult[hht]=$((hht++))
elif [ $random3 == 101 ]
then
        flipCoinResult[hth]=$((hth++))
elif [ $random3 == 011 ]
then
        flipCoinResult[thh]=$((thh++))
elif [ $random3 == 100 ]
then
        flipCoinResult[htt]=$((htt++))
elif [ $random3 == 010 ]
then
        flipCoinResult[tht]=$((tht++))
elif [ $random3 == 001 ]
then
        flipCoinResult[tth]=$((tth++))
else 
	flipCoinResult[ttt]=$((ttt++))
fi
done
}

flipCoin

for key in ${!flipCoinResult[@]}
do
 per=$(($key/1))%
 flipCoinResult[$key[1]]=$per
 echo "$key=[${flipCoinResult[$key]},$per]"
done

#echo "${flipCoinResult[@]}"
