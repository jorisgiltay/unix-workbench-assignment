all: README.md

README.md:
	echo "# Guessing Game Assignment for Unix-Workbench-Course\n" > README.md
	echo -n "Date make was run: " >> README.md
	-date >> README.md
	echo "\n" >> README.md
	echo -n "Lines of code in guessinggame.sh: " >> README.md
	-wc -l <guessinggame.sh >> README.md

clean:
	rm README.md

