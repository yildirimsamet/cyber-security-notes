#!/bin/bash

# AND - OR

# && / -a => and operator
# || / -o => or operator

number=15
name="samet"
if [ $number > 10 ] && [ $name == "samet" ]
then
echo "Conditionals true"
else
echo "False"
fi

# Same example with -a
if [ $number > 10 -a $name == "samet" ]
then
echo "Conditionals true"
else
echo "False"
fi

# Another syntax with one braces [ ]

if [[ $number > 10 && $name == "samet" ]]
then
echo "True"
else
echo "False"
fi

# Same for || -o (or) operator