#!/bin/bash bash
# File: guessinggame.sh


echo "Welcome to the guessing game.Try to guess how many files are in the current directory"


function question {
echo "How many files are in CD?"
read answer
}

question

files=$(pwd | ls | wc -l)

if [[ answer -eq files ]]
	then
		echo "You did it! Congratulations"
	else
		if [[ answer -gt files ]]
			then 
				echo "You entered $answer and it is too high. Try again!"
			else
				echo "You entered $answer and it is too low. Try again!"
		fi
fi

echo "End game"
