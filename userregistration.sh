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
function email()
{
	read -p "Enter your email id:" email
	patternEmail="^[a-zA-Z0-9]{1,}([._+-][a-zA-Z0-9]{1,})?[@]{1}[a-zA-Z0-9]{1,}[.]{1}[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$"
	if [[ $email =~ $patternEmail ]]
	then
        	echo "Email id is valid"
	else
        	echo "Email id is invalid"
	fi
}
function phoneno()
{
	country_code=91
	read -p "Enter your mobile number:" mobile
	patternMobileNumber="^$country_code[ ][0-9]{10}$"
	if [[ $mobile =~ $patternMobileNumber ]]
	then
        	echo "Mobile number is valid"
	else
        	echo "Mobile number is invalid"
	fi
}
firstname
lastname
email
phoneno
