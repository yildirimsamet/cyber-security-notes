#!/bin/bash

#Arguments
#echo $1 $2 $3 #this dollars means the inputs coming from outsite, it comes from the command while you are starting the script. For example ./script.sh argument1 argument2

# $0 is name of the script.

echo $@ # it writes all all arguments

echo $# # counts of args