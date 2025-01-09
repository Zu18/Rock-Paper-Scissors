#!/bin/bash
#main body of the rock,paper,scissors game

source "functions.sh"
source "messages.sh"

main() {
	#welcome and rules displayed at the start
welcomeDisplay
ruleDisplay
	#loops the game until user exits
while true; 
  do
	  #gets the user and computers choices and calculates a winner
    get_user_choice
    computer_choice
    winnerLogic
    		#loops the exit message until y or n is selected
		#"y" runs the program again and "n" exits both loops
	while true; do
		read -p "Do you want to play again? (y/n): " play_again
		if [[ "$play_again" == "n" ]]; then
			display_score_history
			echo "Thanks for playing! Goodbye!"
			break 2

		elif [[ "$play_again" == "y" ]]; then
			echo "Starting new round"
			echo "------------------"
			break
		else
			echo "Invalid input"
		fi
 	done
done

}


main
