#!/bin/bash

#Variables
#There is two type variables 1-system(comes default with system) 2-user

#system
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

#user - custom

name=Samet
echo $name
num=10
echo $num

# read(input) usage
echo "What is your name?"
read name
echo "What is your surname?"
read surname
echo "Welcome $name $surname what is your favorite colors?"
read color1 color2
echo "Well $color1, and $color2 is pretty good colors."

# read in same line. like=> who are you: | input is in the same line.

read -p 'Username: ' name2
read -sp "Password: " password #-s is silent mode, it doenst show the input while writing
echo "Username is $name2, and password is $password"

# arguments -a
echo "Name list: "
read -a namelist

echo "First name:${namelist[0]}, Second name: ${namelist[1]} "