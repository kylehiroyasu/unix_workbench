#!/usr/bin/env bash
# Guessing Game

#create simple function to determine if the guess is correct
function highorlow {
    if [[ $1 -eq $2 ]];
    then
	echo "congrats"
    elif [[ $1 -lt $2 ]];
    then
	echo "$1 is too low"
    else
	echo "$1 is too high"
    fi
}

#Identify the number of files in the directory
nfiles=$(ls | wc -l)

echo $nfiles

#Create local variables for the guessing game
guess=-1

# While the users guess is incorrect keep looping through game
while [[ ! guess -eq nfiles ]];
do
    #get user input
    echo "Please guess the number of files: "
    read guess
    #check if higher or lower
    highorlow $guess $nfiles
done
#if we've gotten out of while loop the user must have guessed right

