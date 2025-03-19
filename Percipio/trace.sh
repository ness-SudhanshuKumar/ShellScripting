#!/bin/ksh
# This is a simple KSH script

# Define a variable
greeting="Hello, World!"

# Print the greeting
echo $greeting

# Get current date and time
current_date=$(date)
echo "Current date and time: $current_date"

# Simple loop example
echo "Counting from 1 to 5:"
for i in 1 2 3 4 5
do
    echo "Number: $i"
done

echo "Script execution complete!"