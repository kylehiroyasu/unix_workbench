#this makefile will automatically generate the readme.md

#Create file if necessary
# append the title of the project
# the date it was run
# the number of lines in guessinggame.sh
README.md: guessinggame.sh
	touch README.md
	echo "Project: unix_workbench" > README.md
	date >> README.md
	wc -l guessinggame.sh | grep -o [0-9]* >> README.md

clean: README.md
	rm README.md


