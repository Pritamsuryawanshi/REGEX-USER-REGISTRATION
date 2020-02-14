#!/bin/bash 
shopt -s extglob

echo "Welcome to REGEX user registration exercises"

read -p "Enter your first name with first letter as CAPITAL: " firstName
read -p "Enter your last name with first letter as CAPITAL: " lastName
read -p "Enter your email ID: " emailId

firstNamePattern="^([A-Z]{1}[a-zA-Z]*)$"
lastNamePattern=$firstNamePattern
emailIdPattern="^([a-zA-Z]{3,}[0-9a-zA-Z_.-+]*[@]{1}[0-9a-zA-Z]*[.]{1}[a-zA-Z]{2,4}[.]*[a-zA-Z]*)$"

if [[ $firstName =~  $firstNamePattern && $lastName =~  $lastNamePattern ]]
then
	echo "VALID"
else
	echo "INVALID"
fi

if [[ $emailId =~ $emailIdPattern ]]
then
	echo "VALID email"
else
	echo "INVALID email"
fi

