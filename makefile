all: README.md

README.md:
	touch README.md
	echo "#Guessing Game Assignment for Unix-Workbench-Course" >> README.md
	echo "" >> README.md
	echo "Date make was run:" >> README.md
	-date >> README.md
	echo "" >> README.md
	echo "Lines of code in guessinggame.sh:" >> README.md
	-wc -l <guessinggame.sh >> README.md

clean:
	rm README.md

