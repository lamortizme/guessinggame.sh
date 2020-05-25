#!/bin/bash bash
# File: guessinggame.sh


echo "Welcome to the guessing game.Try to guess how many files are in the current directory"


function question {
How many files are in CD?
read answer
}

question

local files=$(pwd | ls | wc -l)
if [[ answer -eq files]]
	then
		echo "You did it! Congratulations"
	else
		if [[ answer -gt files]]
			then 
				echo "You entered $answer and it is too high. Try again!"
			elif [[ answer -lt files ]]
				then
					echo "You entered $answer and it is too low. Try again!"
		fi
fi

echo "End game"
