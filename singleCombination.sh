#!/bin/bash 
declare -A flipCoinResult
heads=0
tails=0

function flipCoin(){

for (( i=0; i<1000; i++ ))
do
random=$((RANDOM%2))
if [ $random == 1 ]
then
        flipCoinResult[1]=$((heads++))
else
        flipCoinResult[0]=$((tails++))
fi
done
}


flipCoin
#for key in ${!flipCoinResult[@]}
#do
#echo "$key=${flipCoinResult[$key]}"
#done

echo "Heads Percentage= $(($heads/10))%"
echo "Tails Percentage= $(($tails/10))%"


