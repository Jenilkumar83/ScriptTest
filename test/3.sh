#!/bin/bash

name="abc"
number=123

echo "name = $name"
echo "number = $number"

read -p "Enter a name: " usr_ip_name
read -p "Enter a number: " usr_ip_number

if [ "$usr_ip_name" = "$name" ] && [ "$usr_ip_number" -eq "$number" ]; then
    echo "name and number both matches"
elif [ "$usr_ip_name" = "$name" ]; then
    echo "name matches"
elif [ "$usr_ip_number" -eq "$number" ]; then
    echo "number matches"
else
    echo "name and number does not matches"
fi

