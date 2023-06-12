#!/bin/bash

# Ask the user for the name of the process
echo "Enter the name of the process to kill:"
read processName

# Find any process lines with that name
processLines=$(ps aux | grep "$processName" | grep -v "$0" | grep -v "grep")

# Check if we found something
if [ -n "$processLines" ]
then
    # We may have found multiple processes running
    echo "Here are the matching processes:"
    echo "$processLines"
    
    echo "Enter the PID of the process to kill:"
    read pid

    # Kill the selected process
    sudo kill -9 "$pid"
    echo "Killed process with PID: $pid"
else
    echo "No process was found with the name: $processName"
fi
