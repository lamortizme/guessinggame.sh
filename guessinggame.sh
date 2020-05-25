#!/bin/bash bash
# File: guessinggame.sh


echo "Welcome to the guessing game.Try to guess how many files are in the current directory"


function question {
echo "How many files are in CD?"
read answer
}

question

files=$(pwd | ls | wc -l)

until [[ answer -eq files ]]
do

		if [[ answer -gt files ]]
			then 
				echo "You entered $answer and it is too high. Try again!"
			else
				echo "You entered $answer and it is too low. Try again!"
		fi
question
done
echo "You did it! Congratulations"
echo "This is the end of the game"
