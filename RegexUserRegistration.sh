#!/bin/bash 
shopt -s extglob

echo "Welcome to REGEX user registration exercises"

read -p "Enter your first name with first letter as CAPITAL: " firstName
read -p "Enter your last name with first letter as CAPITAL: " lastName

<<<<<<< HEAD
firstNamePattern="^([A-Z]{1}[a-zA-Z]{2,})$"

if [[ $firstName =~  $firstNamePattern ]]
=======
firstNamePattern="^([A-Z]{1}[a-zA-Z]*)$"
lastNamePattern=$firstNamePattern

if [[ $firstName =~  $firstNamePattern && $lastName =~  $lastNamePattern ]]
>>>>>>> UC2_Getting_Valid_Last_Name
then
	echo "VALID"
else
	echo "INVALID"
fi
