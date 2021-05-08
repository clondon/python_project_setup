#!/bin/bash

# Steps
# Allow the user to copy the pyton project skeleton to a new working directory
# 1 - Since the new directory must be provided,  we examine the command line arguments.
#   

# PROJDIR="/Users/charles/Documents/Projects/python_proj"
PROJDIR="temp"
# Todo Enable Python virutal environment  


# Global Variables
DEBUG="0"  
CMDLINEARG=$@
CMDLINECOUNT=$#

# Functions
# Use to test sections with   if [ $DEBUG" == "true" ]
function debug_func  {
    echo "Value of DEBUG = $DEBUG"
    echo "Debug value $1"
}


# Check for local skeleton package
if [ -f 'python_skel.tar' ]
    then
    echo "Using Python Skeleton file"
    $(tar -xvf  python_skel.tar --directory ./$PROJ_DIR)
    echo "Extaction done"
fi


exit

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
    $(mv $TEMPDIR/NAME/ $TEMPDIR/x$ )
    # $(mv $TEMPDIR/NAME/ $TEMPDIR/$x.py)

done


exit $?




# Command line argument exists lets loop though the options

