all: README.md

README.md: guessinggame.sh

	echo "# Guessing game" > README.sh
	echo "\n**Number of lines:**" >> README.sh
	wc -l guessinggame.sh | egrep -o "[0-9]+"
	echo "\n**Date and the time at wich make was run**" >> README.sh
	date >> README.sh
