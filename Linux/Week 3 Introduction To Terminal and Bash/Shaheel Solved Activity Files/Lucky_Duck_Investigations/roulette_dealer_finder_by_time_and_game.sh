#!/bin/bash


# BONUS QUESTION


# THESE IF ELSE STATEMENTS DON'T SEEM TO BE WORKING CORRECTLY.
# CODE DOES NOT HANDLE THE ELSE STATEMENTS CORRECTLY


str1=$4
if str1="Blackjack"
then
cat $1_Dealer_schedule | grep -i $2" "$3 $1_Dealer_schedule | awk -F" " '{print $1" "$2" "$3" "$4}'


elif str1="Roulette"
then
cat $1_Dealer_schedule | grep -i $2" "$3 $1_Dealer_schedule | awk -F" " '{print $1" "$2" "$5" "$6}'


str2=$5
str3=$6
elif str1=="Texas"
then
cat $1_Dealer_schedule | grep -i $2" "$3 $1_Dealer_schedule | awk -F" " '{print $1" "$2" "$7" "$8}'


fi


