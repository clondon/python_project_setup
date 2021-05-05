#!/bin/bash

# Steps
# Allow the user to copy the pyton project skeleton to a new working directory
# 1 - Since the new directory must be provided,  we examine the command line arguments.
#   

PROJDIR="/Users/charles/Documents/Projects/python_proj"

# Todo Enable Python virutal environment  


DEBUG="0"  

# Use to test sections with   if [ $DEBUG" == "true" ]

function debug_func  {
    echo "Value of DEBUG = $DEBUG"
    echo "Debug value $1"
}

CMDLINEARG=$@
CMDLINECOUNT=$#

echo "Number of command line arugment $CMDLINECOUNT, $CMDLINEARG"
if [ "$CMDLINECOUNT" -le 1 ]
    then
        echo "Usage - required command line arguments"
fi

for x in $CMDLINEARG
do
    echo "Creating $PROJDIR/$x"
    TEMPDIR="$PROJDIR/$x"
    echo "$TEMPDIR"
    $(mkdir -p $TEMPDIR)
    $(cp -R ~/Documents/Projects/python_proj/skeleton/ $TEMPDIR)
    $(mv $TEMPDIR/NAME/NAME_tests.py $TEMPDIR/NAME/$x.py)
    $(mv $TEMPDIR/NAME/ $TEMPDIR/$x.py)

done


exit $?




# Command line argument exists lets loop though the options



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