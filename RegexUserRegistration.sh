#!/bin/bash 
shopt -s extglob

echo "Welcome to REGEX user registration exercises"

read -p "Enter your first name with first letter as CAPITAL: " firstName
read -p "Enter your last name with first letter as CAPITAL: " lastName
read -p "Enter your email ID: " emailId
read -p "Enter your Phone number: " phoneNumber
read -p "Enter the password: " password

firstNamePattern="^([A-Z]{1}[a-zA-Z]*)$"
lastNamePattern=$firstNamePattern
emailIdPattern="^([a-zA-Z]{3,}[0-9a-zA-Z_.-+]*[@]{1}[0-9a-zA-Z]*[.]{1}[a-zA-Z]{2,4}[.]*[a-zA-Z]*)$"
phoneNumberPattern="^[0-9]{2}[[:space:]][0-9]{10}$"
passwordPattern="^[0-9a-zA-Z]{8,}$"
if [[ $firstName =~  $firstNamePattern && $lastName =~  $lastNamePattern ]]
then
	echo "VALID"
else
	echo "INVALID"
fi

if [[ $emailId =~ $emailIdPattern ]]
then
	echo "VALID EMAIL ID"
else
	echo "INVALID EMAIL ID"
fi

if [[ $phoneNumber =~ $phoneNumberPattern ]]
then
	echo "VALID PHONE NUMBER"
else
	echo "INVALID PHONE NUMBER"
fi

if [[ $password =~ $passwordPattern ]]
then
	echo "VALID PASSWORD"
else
	echo "INVALID PASSWORD"
fi
