#!/bin/bash


source "functions.sh"
source "messages.sh"

main() {
welcomeDisplay
ruleDisplay
while true; 
  do
    get_user_choice
    computer_choice
    winnerLogic
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
