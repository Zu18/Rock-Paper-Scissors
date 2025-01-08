# user_choice
get_user_choice() {
  while true;
   do
    read -p "Enter your choice (1-3): " user_choice
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

#Score

