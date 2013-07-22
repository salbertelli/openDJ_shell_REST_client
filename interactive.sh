#!/bin/bash
#OpenDJ shell REST client
#Optional interactive front end for using the combined script list

#main menu interface
function menu() { 
	
	clear
	echo "OpenDJ Shell REST Client - interactive mode"
	echo "----------------------------------------------------------------------------------"
	echo "1:  Get a user object"
	echo "2:  Delete a user"
	echo "3:  Create a user"	
	echo "4:  Update a user using PATCH"	
	echo ""
	echo "X:  Exit"
	echo "----------------------------------------------------------------------------------"
	echo "Select an option:"
	read option

	case $option in

		1)
			get_user
			;;	

		2)
			delete_user
			;;

		3)
			create_user
			;;

		4)
			patch_user
			;;


		[x] | [X])
				clear	
				echo "Byeeeeeeeeeeeeeeeeeee :)"
				echo ""			
				exit
				;;
		*)

			menu
			;;
	esac

}


#calls patch_user
function patch_user() {

	clear
	echo "Enter the uid of the user to update:"
	read user
	echo ""
	echo "Current directory contains the following JSON files:"
	echo ""
	ls *.json
	echo ""
	echo "Enter name of JSON payload file that contains the user updates. Eg patch.json:"
	read payload
	echo ""
	./patch_user.sh $user $payload
	echo ""	
	read -p "Press [Enter] to return to menu"
	menu		

}

#calls get_user
function get_user() {

	clear
	echo "Enter uid of user to find:"
	read user
	./get_user.sh $user
	echo ""	
	read -p "Press [Enter] to return to menu"
	menu	
	
}

#calls delete_user
function delete_user() {

	clear
	echo "Enter uid of user to delete:"
	read user
	./delete_user.sh $user
	echo ""	
	read -p "Press [Enter] to return to menu"
	menu	

}

#calls create_user
function create_user() {

	clear
	echo "Current directory contains the following JSON files:"
	echo ""
	ls *.json
	echo ""
	echo "Enter name of JSON payload file of the user to create. Eg user.json:"
	read payload
	./create_user.sh $payload
	echo ""	
	read -p "Press [Enter] to return to menu"
	menu
}

#initiate menu
menu
