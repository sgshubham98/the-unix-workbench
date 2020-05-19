all: README.md

README.md:
	touch README.md
	echo '# Guessing Game' > README.md
	echo '## $(shell date '+%d/%m/%Y %H:%M:%S')' >> README.md
	echo 'Number of lines of code in guessinggame.sh: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")' >> README.md
clean:
	rm README.md
