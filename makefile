all: README.md

README.md:
	echo '## Guessing Game' > README.md
	echo -n "**The time and date at wich *make* was run:**" >> README.md
	date >> README.md
	echo -n '/n**The number of line in *guessinggame.sh:**' >> README.md
	wc -l < ./guessgame.sh >> README.md
