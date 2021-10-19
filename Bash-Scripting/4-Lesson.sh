#!/bin/bash
#If - Else

# INTEGER-- 

# -eq (equal) if [ "$a" -q "$b"]
# -ne (not equal)
# -gt (greater than)
# -ge (greater or equal)
# -lt (less than)
# -le (less than or equal)


# < less than / if (( "$a" < "$b" ))
# <= less than or eq
# > greater than
# >= greater than or eq


# STRING--

# == type equal / if[ "$a" == "$b"]
# != not equal
# < less than / (if we use <,> symbols syntax is like this if [[ "$a" > "$b" ]])
# > greater than

number=10

if [ $number -eq 10 ]
then
echo "Correct" # this will work
else
echo "Wrong"
fi;

#-------------

if (( $number >= 15 ))  
then
echo "Correct"
elif (( $number >= 12 ))
then
echo "Wrong"
else
echo "Wrong" # this will work
fi;

#---------

name="samet"
if [ $name == "samet" ]
then
echo "True" #this will work
else
echo "False"
fi

#-------

letter1="a"
letter2="b"
if [[ $letter1 < $letter2 ]]
then
echo "True" # this will work
else
echo "False"
fi
