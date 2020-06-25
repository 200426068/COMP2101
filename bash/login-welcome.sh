#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
usrname="$USER"
#we have to use environment variable to have username dynamically
hostname="$(hostname)"
#we have to use environment variable to have hostname dynamically
day=$(date +%A)
# using the date command to get which day of week is it
currenttime=$(date +%I:%M\ %p)
#using date command to get date
###############
# Main        #
###############
# testing day name by if else command and printing message in accord to the day name by adding separate line
if [ "$day" = Monday ];
then
csay="Welcome to planet $hostname, techy person $usrname!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, tech expert $usrname!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, tech Guy $usrname!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, firewall support $usrname!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, neuron expert $usrname!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, vsphere expert $usrname!"
else
csay="Welcome to planet $hostname, punctual person $usrname!"
fi
cowsay "$csay It is $currenttime on $day ."
