#!/bin/bash

# Steps
# Allow the user to copy the pyton project skeleton to a new working directory
# 1 - Since the new directory must be provided,  we examine the command line arguments.
#   

PROJ_DIR="~/Documents/Projects/python_proj/temp"

# Todo Enable Python virutal environment  

DEBUG="0"  

# Use to test sections with   if [ $DEBUG" == "true" ]

function debug_func  {
    echo "Value of DEBUG = $DEBUG"
    echo "Debug value $1"
}

CMDLINEARG=$@
CMDLINECOUNT=$#


for x in $CMDLINEARG
do
    echo "Creating $PROJ_DIR/$x"
    mkdir -p "$PROJ_DIR/$x"
done

$(ls -l "$PROJ_DIR/$x")

exit 0

if [ "$CMDLINECOUNT" == 0 ] # Test if the user entered a command line argument.
    then 
        echo "Command line arguments required."
        echo "Usage $(basename ${0}) \"new_dir_name\""
        exit 0 # Exit if no command line arugument is provided
fi

# Command line argument exists lets loop though the options


for x in $CMDLINEARG
    do
        echo "$x"

    done
exit

mkdir PROJ_DIR/$1
echo $PROJ_DIR/$1

if [ ! -d $PROJ_DIR/$1 ]
    then
    echo "Created  ~/Documents/Projects/python_proj/$1"
else
     echo "Could not create  $PROJ_DIR/$1"
     exit
fi
cp -R ~/Documents/Projects/python_proj/skeleton/ PROJ_DIR/$1
 # Rename NAME project directory
mv ~/Documents/Projects/python_proj/$1/NAME  ~/Documents/Projects/python_proj/$1/$1
mv ~/Documents/Projects/python_proj/$1/tests/NAME_tests.py  ~/Documents/Projects/python_proj/$1/tests/$1_test.py
     


echo "Copied in Python Skeleton to $1"
tree -f $PROJ_DIR/$1


exit 0