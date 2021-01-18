#!/bin/bash
clear
echo  -e "\033[32m[*]           S0x4 - Same Site Scripting Scanner             [*]\033[0m\n"
echo  -e "\033[32m[*] Written by: Mustafa - Twitter: twitter.com/c0brabaghdad1 [*]\033[0m\n\n"

host="$1"
list="$2"

if [ "$host" == "" ] || [ "$list" == "" ] 
then
echo -e "\033[33mUsage: ./s4.sh target.tld list.txt\033[0m"

else
while IFS='' read -r custom_wordlist ; do
	output= host $custom_wordlist.$host
	echo -e "\033[91m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\033[0m"
done < "$list"
fi