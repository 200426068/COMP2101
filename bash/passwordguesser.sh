#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

done="It's correct."
try="Incorrect, try again.."
referenceString="Password" #we have to create a variable to store password
read -s -p "Enter Pass:" myString #getting userinput silently for password and saving into $myString
echo
#using the if-else condition 5 times to make sure input is valid by comparing $referenceString.
if [ $myString = $referenceString ]; then
  echo "$done"
  echo
  else
    echo "$try"
    read -s -p "Enter Pass:" myString
    if [ $myString = $referenceString ]; then
   echo "$done"
   echo
   else
     echo
     echo "$try"
     read -s -p "Enter Pass:" myString
   if [ $myString = $referenceString ]; then
     echo "$done"
     echo
   else
     echo
     echo "$try"
	 read -s -p "Enter Pass:" myString
	if [ $myString = $referenceString ]; then
  echo "$done"
  echo
  else
    echo "$try"
    read -s -p "Enter Pass:" myString
	if [ $myString = $referenceString ]; then
  echo "$done"
  echo
  else
    echo "Try Again..."
		fi
	  fi
    fi
  fi
fi
