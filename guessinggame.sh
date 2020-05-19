function guess() {
	correct=$(ls -lA | wc -l)
	while true
	do
		echo "Guess the number of files in the current directory:"
		read num
		if ! [[ $num =~ ^[0-9]+$ ]]
		then
			echo "Error: not a valid input - Input should be a integer"
		elif [ $num -gt $correct ]
		then
			echo "your guess is too high"
		elif [ $num -lt $correct ]
		then
			echo "your guess is too low"
		else
			echo "Congratulations!!"
			break
		fi
	done
}

guess
