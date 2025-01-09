#!/bin/bash


source "functions.sh"

main() {
  while true; 
  do
    echo "Rock-Paper-Scissors Games!"

    get_user_choice
    computer_choice

    read -p "Do you want to play again? (y/n): " play_again
    if [[ "$play_again" != "y" && "$play_again" != "y" ]]; then
      display_score_history
      echo "Thanks for playing! Goodbye!"
      break
    fi
  done
}



main
