#!/bin/bash

text="WELCOME TO YOUR TERMINAL"
colors=(31 32 33 34 35 36 91 92 93 94 95 96)

clear
for (( i=0; i<${#text}; i++ )); do
    color=${colors[$RANDOM % ${#colors[@]}]}
    echo -ne "\e[1;${color}m${text:$i:1}\e[0m"
    sleep 0.1
done
echo -e "\n"
