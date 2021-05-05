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

