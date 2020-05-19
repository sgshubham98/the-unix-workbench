function guess() {
	correct=$(ls -l | grep "^-" | wc -l)
	while true
	do
		echo "Guess the number of files in the current directory:"
		read num
		if [ $num -gt $correct ]
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
