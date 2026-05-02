#!/bin/bash
degistir(){
echo "Your current hostname: $(hostname)"
echo "What hostname do you want: "
read -e newhostname

if [[ -z "$newhostname" ]]; then
 	echo "Cannot be empty!"
	sleep 2
	degistir
	return
fi
hostnamectl hostname "$newhostname"
echo "Your hostname has been changed your new hostname is: $newhostname"
sleep 3
}
degistir
