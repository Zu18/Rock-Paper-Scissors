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

# Arrays to track scores !!!Set to the empty array after adding determine_winner() function
# 0 - lost, 1 - won, T - tie
user_score_history=("0" "1" "T")
computer_score_history=("1" "0" "T")
user_total=0
computer_total=0
display_score_history() {
   echo
   echo "Score History"
   echo "------------------"
   echo -e "User\tComputer"
   length=${#user_score_history[@]}
   
   for ((i=0; i<length; i++))
   do
     if [[ ${user_score_history[i]} == 1 ]]; then
       ((user_total++))
     fi
     if [[ ${computer_score_history[i]} == 1 ]]; then
       ((computer_total++))
     fi
     echo -e "${user_score_history[i]}\t${computer_score_history[i]}"
   done

   echo "------------------"
   echo "Total Scores:"
   echo -e "User: $user_total\tComputer: $computer_total"
   echo "------------------"
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

#winnerLogic score incremented
winnerLogic(){
	#checks if its a draw
	if [[ "$computer_number" -eq "$user_choice" ]];then
		echo "Draw"
		user_score_history+=('T') 
		computer_score_history+=('T')

		#checks if the user has won
	elif [[ "$user_choice" -eq 1 && "$computer_number" -eq 3 ]];then
	        echo "YOU WIN!!"
		user_score_history+=('1')
		computer_score_history+=('0')
		((user_total++))

       elif [[ "$user_choice" -eq 2 && "$computer_number" -eq 1  ]];then
		echo "YOU WIN!!"
		user_score_history+=('1')
		computer_score_history+=('0')
		((user_total++))

 	elif [[ "$user_choice" -eq 3 && "$computer_number" -eq 2 ]];then
		echo "YOU WIN!!"
		user_score_history+=('1')
		computer_score_history+=('0')
		((user_total++))

		#else user loses
	else
		echo "YOU LOSE!!"
		user_score_history+=('0')
		computer_score_history+=('1')
		((computer_total++))
	fi
}		




#Score

