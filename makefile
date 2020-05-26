all: README.md

README.md:
	echo "# Guessing Game\n" > README.md
	echo -n "## The time and date:" >> README.md
	date >> README.md
	echo -n "## Number of lines in 		guessinggame.sh:" >> README.md
	wc -l < ./guessinggame.sh >> README.md

