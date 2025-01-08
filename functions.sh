# user_choice
get_user_choice() {
  while true;
   do
    read -p "Enter your choice (1 Rock, 2 Paper, 3 Scissors): " user_choice
    if [[ "$user_choice" != 1 && "$user_choice" != 2 && "$user_choice" != 3 ]]; then
      echo "Invalid choice, please enter a number between 1 and 3."
    else
      case $user_choice in
        1) echo "You chose Rock" ;;
        2) echo "You chose Paper" ;;
        3) echo "You chose Scissors" ;;
      esac
      break
    fi
  done
}


# computer's choice
computer_choice() {
	computer_number=$(( (RANDOM % 3) + 1 ))
        echo "computer choice: $computer_number"
	
	case $computer_number in
		1) echo "Computer chose Rock" ;;
		2) echo "Computer chose Paper" ;;
		3) echo "Computer chose Scissors" ;;
	esac
}


#Score

