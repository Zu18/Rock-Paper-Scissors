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

    read -p "Do you want to play again? (y/n): " play_again
    if [[ "$play_again" != "y" && "$play_again" != "y" ]]; then
      display_score_history
      echo "Thanks for playing! Goodbye!"
      break
    fi
  done
}



main
