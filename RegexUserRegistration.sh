#!/bin/bash
shopt -s extglob

echo "Welcome to REGEX user registration exercises"

#Function to validate the regex pattern
function regexValidator()
{
	if [[ $1 =~ $2 ]]
	then
		echo "VALID"
	else
		echo "INVALID"
	fi
}

#MAIN
read -p "Enter the password: " password

firstNamePattern="^([A-Z]{1}[a-zA-Z]*)$"
lastNamePattern=$firstNamePattern
emailIdPattern="^[a-zA-Z]{3,}([.-]?[a-zA-Z0-9]+)?[@]{1}[0-9a-zA-Z]+[.]{1}[a-zA-Z]{2,3}([.]?[a-zA-Z]+)?$"
phoneNumberPattern="^[0-9]{2}[[:space:]][0-9]{10}$"
passwordPattern="^[^A-Z]*+[A-Z][a-zA-Z]{7,}$"

regexValidator $password $passwordPattern
