#!/bin/bash
#Week 12 assignment 


while true
do #Conditional Statement to test while the user does not select choice 5 do the following below
echo "-----------------------------------------------------------------"
echo "                           Main Menu                             "
echo "-----------------------------------------------------------------"

echo "Greetings User! Please select from the following options below:" #Greet User and Display choices
echo "1. Press 1 to show the routing table."
echo "2. Press 2 to show all listening ports."
echo "3. Press 3 to show the IP address, Broadcast Address and Subnet (netmask) address of the network interface."
echo "4. Press 4 to ping a remote host (can be an IP address or text."
echo "5. Press 5 to Exit Program"



read -r -p "Please enter your choice [1 - 5]: " choice #read input from user and store to the variable 'choice'.



case $choice in
	1) 
	    netstat -nr
	     
		;;
	2) 
	    netstat -na | grep LISTENING
	    
		;;
	3)
	    echo -n "Please enter the interface:"
            read if_choice
	    ifconfig "$if_choice"
	      
		;;
	4)
	    echo -n "Please enter a remote host that you would like to ping:"
	    read remote_host
	    ping -c 5 "$remote_host"
	    
		;;
	5)
            echo "Good-bye and have an excellent day :)"
	    break

		;;
	
        *) #Unrecognized option will display an error message to the user. 

	    echo "Please enter a valid option! Thanks."
		;;
esac
done
