#!/bin/bash

# Characters to display
chars=( 0 1 2 3 4 5 6 7 8 9)

# Get terminal size
cols=$(tput cols)
lines=$(tput lines)

# Hide cursor and clear screen
tput civis
clear

# Function to create a single stream
stream() {
    local col=$1
    while true; do
        # Randomize the length of the stream
        length=$((RANDOM % lines))
        for ((i = 0; i < length; i++)); do
            # Move cursor to position
            tput cup $i $col
            # Print random character in green
            printf "\e[32m${chars[RANDOM % ${#chars[@]}]}\e[0m"
            # Short delay for speed; decrease for faster effect
            sleep 0.02
        done
        # Clear the column after the stream
        for ((i = 0; i < length; i++)); do
            tput cup $i $col
            printf " "
            sleep 0.001
        done
    done
}

# Launch multiple streams for density
for ((i = 0; i < cols; i+=2)); do
    stream $i &
done

# Allow streams to run
wait

# Show cursor again upon exit
tput cnorm
