#!/bin/bash

#This is testing
pdir=$(pwd)
echo "This is $pdir"
perms=$(stat -L -c "%a %G %U" first.sh)  
echo "Permissions: $perms"

if [ ! -d newdir ]
then
	mkdir newdir
fi

flush() {
	testo=$1
	echo $testo
	
	read "How many files should I flush? " times
	cnt=0
	while [ $cnt -le times ]
	do
		if [ ! -f "newdir/txtfile$cnt.txt" ]
		then
			touch "newdir/txtfile$cnt.txt"
		fi
		cnt=$(( cnt+1 ))
	done

	sleep 0.5

	for file in newdir/*.txt
	do
		rm $file
	done
	echo $testo2
}

animate() {
	out=$1
	for time in {1..4} ; do
		printf "\r$out"
		sleep 0.4
		out="$out ."
	done
	echo ""
}

del() {
	animate "Initiating new deletion"
	for filus in *
	do
		echo $filus
	done
}
read -p "Proceed with deletion? (y/n): " pro

if [ $pro == "y" ]
then
	del
elif [ $pro == "n" ] 
then
	echo "[$(date)]: Deletion aborted. Ceasing activity." >> firstlog.log
	exit 2
fi

set -o noclobber
if [ -f firstlog.log ]
then
	echo "Log file exists, logging data"
	echo "[$(date)]: Registered execution of shell script. Permission granted." >> firstlog.log
else 
	touch firstlog.log
fi
exit 0
