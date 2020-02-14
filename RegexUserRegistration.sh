#!/bin/bash 
shopt -s extglob

echo "Welcome to REGEX user registration exercises"

read -p "Enter your first name with first letter as CAPITAL: " firstName
read -p "Enter your last name with first letter as CAPITAL: " lastName

firstNamePattern="^([A-Z]{1}[a-zA-Z]*)$"
lastNamePattern=$firstNamePattern

if [[ $firstName =~  $firstNamePattern && $lastName =~  $lastNamePattern ]]
then
	echo "VALID"
else
	echo "INVALID"
fi
