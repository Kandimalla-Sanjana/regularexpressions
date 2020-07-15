#! /bin/bash

echo "Welcome user!"

function firstname()
{
	read -p "Enter the first name:" firstName
	patternFirstName="^([[:upper:]]){1}[[:lower:]]{2,}$"
	if [[ $firstName =~ $patternFirstName ]]
	then
        	echo "First name is valid"
	else
        	echo "First name is invalid"
	fi
}

function lastname()
{
	read -p "Enter the last name:" lastName
	patternLastName="^([[:upper:]]){1}[[:lower:]]{2,}$"
	if [[ $lastName =~ $patternLastName ]]
	then
        	echo "Last name is valid"
	else
        	echo "Last name is invalid"
	fi
}

firstname
lastname
