#stores the responses to the user
#! /bin/bash

computer_choice()  {
	random_number=$(( (RANDOM % 3) + 1 ))

	echo "computer choice: $random_number"
}
