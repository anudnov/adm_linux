#!/bin/bash

# echo "What is your name?"
# read name

name=$1
user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good Morning $name!"
sleep 1

echo "Youwre looking good today $name!"
sleep 1

echo "You have the best beard I've ever seen $name!"
sleep 1

echo "$user, today is $date, $whereami"
