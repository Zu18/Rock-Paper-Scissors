#stores the responses to the user
#! /bin/bash

#displays a welcome message

welcomeDisplay() {
	echo "welcome to Rock, Paper, Scissors."
	echo "A game of human vs machine."
}

#displays the rules at the start if the program
ruleDisplay() {
	echo "Pick an option: Rock, Paper or scissors."
	echo "- Rock beats Scissors."
	echo "- Scissors beat Paper."
	echo "- Paper beats Rock."
	echo "GOOD LUCK."
}
