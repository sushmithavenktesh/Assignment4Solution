all: README.md

README.md: guessinggame.sh
	echo "## The Unix course assignment" > README.md
	echo "*by john" >> README.md
	echo "\n**Desc**: make a program called *guessinggame.sh*. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md