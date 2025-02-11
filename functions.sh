#!/bin/bash

source "colours.sh"


# user_choice
#
# gets the users choice as a variable and tells them what they picked
get_user_choice() {
  while true;
   do
    read -p "Enter your choice (1 Rock, 2 Paper, 3 Scissors): " user_choice
    if [[ "$user_choice" != 1 && "$user_choice" != 2 && "$user_choice" != 3 ]]; then
      echo -e "${RED}Invalid choice, please enter a number between 1 and 3.${NC}"
    else
      case $user_choice in
        1) echo -e "${YELLOW}You chose Rock${NC}" ;;
        2) echo -e "${YELLOW}You chose Paper ${NC}" ;;
        3) echo -e "${YELLOW}You chose Scissors${NC}" ;;
      esac
      break
    fi
  done
}

# Arrays to track scores 
# 0 - lost, 1 - won, T - tie
user_score_history=()
computer_score_history=()
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
     echo -e "${user_score_history[i]}\t${computer_score_history[i]}"
   done

   echo "------------------"
   echo "Total Scores:"
   echo -e "User: $user_total\tComputer: $computer_total"
   echo "------------------"
}

# generates the computer's choice
computer_choice() {
	computer_number=$(( (RANDOM % 3) + 1 ))
	
	case $computer_number in
		1) echo -e "${BLUE}Computer chose Rock${NC}" ;;
		2) echo -e "${BLUE}Computer chose Paper${NC}" ;;
		3) echo -e "${BLUE}Computer chose Scissors${NC}" ;;
	esac
}

#winnerLogic score incremented and history appended
winnerLogic(){
	#checks if its a draw
	if [[ "$computer_number" -eq "$user_choice" ]];then
		echo "Draw"
		user_score_history+=('T') 
		computer_score_history+=('T')

		#checks if the user has won
	elif [[ "$user_choice" -eq 1 && "$computer_number" -eq 3 ]];then
	        echo -e "${GREEN}YOU WIN!!${NC}"
		user_score_history+=('1')
		computer_score_history+=('0')
		((user_total++))

       elif [[ "$user_choice" -eq 2 && "$computer_number" -eq 1  ]];then
		echo -e "${GREEN}YOU WIN!!${NC}"
		user_score_history+=('1')
		computer_score_history+=('0')
		((user_total++))

 	elif [[ "$user_choice" -eq 3 && "$computer_number" -eq 2 ]];then
		echo -e "${GREEN}YOU WIN!!${NC}"
		user_score_history+=('1')
		computer_score_history+=('0')
		((user_total++))

		#else user loses
	else
		echo -e "${RED}YOU LOSE!!${NC}"
		user_score_history+=('0')
		computer_score_history+=('1')
		((computer_total++))
	fi
	echo -e "User: $user_total\tComputer: $computer_total"
}		



