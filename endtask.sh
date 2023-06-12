#!/bin/bash

while true
do
    # Ask the user for the name of the process
    echo "Enter the name of the process to kill (or 0 to exit):"
    read processName

    # If user entered 0, exit the script
    if [ "$processName" == "0" ]
    then
        echo "Exiting."
        break
    fi

    # Find any process lines with that name
    processLines=$(ps aux | grep "$processName" | grep -v "$0" | grep -v "grep")

    # Check if we found something
    if [ -n "$processLines" ]
    then
        # We may have found multiple processes running
        echo "Here are the matching processes:"
        echo "$processLines"
        
        echo "Enter the PID of the process to kill (or 0 to skip):"
        read pid

        # If user entered 0, skip this process
        if [ "$pid" == "0" ]
        then
            echo "Skipping."
            continue
        fi

        # Kill the selected process
        sudo kill -9 "$pid"
        echo "Killed process with PID: $pid"
    else
        echo "No process was found with the name: $processName"
    fi
done
