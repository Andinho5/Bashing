#!/bin/bash

echo "Ready"

# Your input string
input_string="one,two,three,four,five"

# Set the IFS (Internal Field Separator) to a comma
IFS=','

# Read the input string into an array
read -a my_array <<< "$input_string"

# Loop through the elements of the array
for element in "${my_array[@]}"; do
    echo "${element}"
done


# name server names FQDN 
#NAMESERVERS=("ns1.nixcraft.net." "ns2.nixcraft.net." "ns3.nixcraft.net.")
ThisArray=("test" "scnd" "poo" "shd")

# get length of an array
tLen=${#ThisArray[@]}
 
# use for loop read all nameservers
for (( i=0; i<${tLen}; i++ ));
do
	echo $i
  	echo "${ThisArray[$i]}"
done

slist="iwerr,iwrfe,iwprtk"
echo $tsrt2

sedding() {
	lgfile=$1
	FIND_STR=$2
	grep $FIND_STR $lgfile
	sed -i "s/$FIND_STR/WEDT/" $lgfile	
}

doing() {
	stlist=$1
	echo "${stlist}"
	stlist=(`echo "${stlist}"|sed "s/,/','/g"`)
	echo "${stlist[0]}"
}