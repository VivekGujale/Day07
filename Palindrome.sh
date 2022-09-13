#!/bin/bash -x

read -p "Enter the number:" num

function Palindrome()
{
	number=$num
	reverse=0
		while [ $num -gt 0 ]
		do
		a=$(($num%10))
		reverse=$(($reverse$a))
		num=$(($num/10))
		done

	if [ $number -eq $reverse ]
	then
	echo "Number is Palindrome"
	else
	echo "Number is not Palindrome"
	fi
}
Palindrome $num
