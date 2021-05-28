#!/bin/bash -x
random=$((RANDOM%2))
if [ $random == 1 ]
then
	echo "It's a Heads"
else
	echo "It's a Tails "
fi
