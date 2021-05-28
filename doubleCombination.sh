#!/bin/bash 
declare -A  flipCoinResult
hh=0
ht=0
tt=0
th=0

function flipCoin(){
for (( i=0; i<1000; i++ ))
do
random1=$((RANDOM%2))
random2=$random1$((RANDOM%2))
if [ $random2 == 11 ]
then
        flipCoinResult[hh]=$((hh++))
elif [ $random2 == 10 ]
then
        flipCoinResult[ht]=$((ht++))
elif [ $random2 == 00 ]
then
        flipCoinResult[tt]=$((tt++))

else 
	flipCoinResult[th]=$((th++))
fi
done
}

flipCoin

for key in ${!flipCoinResult[@]}
do
 per=$(($key/10))%
 flipCoinResult[$key[1]]=$per
 echo "$key=[${flipCoinResult[$key]},$per]"
done

echo "${flipCoinResult[@]}"
