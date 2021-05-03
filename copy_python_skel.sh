#!/bin/bash
# Enable virutal environment

PROJ_DIR="~/Documents/python_proj/test_dir"
# Do not use spce when assigning variables, Do not use the $ when assigning variables

DEBUG="false"



# Check target directory
if [ -d "$PROJ_DIR" ]
then
    echo "Target directory exists, not creating!"
 
else
    echo "Directory does not exist, creating directory $PROJ_DIR"
    tree /f "$PROJ_DIR"
    mkdir -p "$PROJ_DIR"
    if [ $? -eq == 0 ]
    then
        echo "Directory was created"
    fi
fi



exit 0
echo "Creating Python project in ~/Documents/Projects/python_proj/skeleton/* ~/Documents/Projects/python_proj/$1."



CMDLINEARG=$@

if [ $# -lt 2 ] # Test if the user entered a command line argument.
    then 
        echo "Command line arguments required."
        echo "Usage $0 \"new_dir_name\""
        exit 0
fi

if [ "$DEBUG" == "true" ]
then
echo "Length of command line arguments ${#CMDLINEARG}"
echo "Number of command line arguments = ${#}"
fi


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