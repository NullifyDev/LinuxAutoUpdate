#!/bin/bash
clear
blue="\e[0;94m"
clear="\e[0m"
echo -e "${blue}=============================================================================================================="
echo -e " " 
echo -e "${blue}     #####   ##    ##   ##########   #######      ##    ##   ######    ######        ##### #########   ######   "
echo -e "${blue}    ##  ##   ##    ##       ##      ##     ##     ##    ##   ##   ##   ##   ##      ##  ##     ##      ##       "
echo -e "${blue}   ##   ##   ##    ##       ##      ##     ##     ##    ##   ##   ##   ##    ##    ##   ##     ##      ######   "
echo -e "${blue}  ########   ##    ##       ##      ##     ##     ##    ##   ######    ##    ##   ########     ##      ###      "
echo -e "${blue} ##     ##   ##    ##       ##      ##     ##     ##    ##   ##        ##   ##   ##     ##     ##      ##       "
echo -e "${blue}##      ##    ######        ##       #######       ######    ##        ######   ##      ##     ##      ######   " 
echo -e " "
echo -e "=============================================================================================================="
echo -e "${clear}"
echo "Please wait for 5 seconds or press [Ctrl + C] to cancel"
sleep 5
echo "Initialising..."
i=0
green='\033[0;32m'
clear='\033[0m'
sleep 1
echo "Testing colors..."
echo ""
printf "${green}Green.${clear}"
echo " "
echo "Color testing completed successfully!"
sleep 1

sleep 0.5
echo 'Starting autoupdate.sh...'
sleep 3
alive = 5
while [ alive -ne 0 ]:
do
	if [[ $i -ge 3 ]]
	then 
		$i=0
		printf "${green}Executing 'sudo apt clean' ${clear}"
		sudo apt clean
		echo " "
		printf "${green}Executing 'sudo apt autoclean' ${clear}"
		sudo apt autoclean
		echo " "
		printf "${green}Executing 'sudp apt autoremove' ${clear}"
		sudo apt autoremove
		echo " "
	fi
	echo " " 
	printf "${green}Executing the update command line... ${clear}"
	echo " "
	sudo apt update
	printf "${green}Executing the full-upgrade line... ${clear}"
	echo " "
	sudo apt full-upgrade
	echo " "
	alive--
continue
echo "Restaring updating in 3 seconds..."
sleep 3
done
