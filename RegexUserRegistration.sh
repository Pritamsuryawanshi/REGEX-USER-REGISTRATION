#!/bin/bash
shopt -s extglob

echo "Welcome REGEX user registration exercises"

read -p "Enter the your name with first letter as CAPITAL: " firstName
firstNamePattern="^([A-Z]{1}[a-zA-Z]*)$"
if [[ $firstName =~  $firstNamePattern ]]
then
	echo "VALID"
else
	echo "INVALID"
fi
