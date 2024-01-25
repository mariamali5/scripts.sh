#!/bin/bash
echo "How long password length do you want"
read length
echo "complexity:1-easy2-hard3-too hard"
read complexity
password=" "
if [[ $complexit == 1 ]]; then
password="A-Za-z"
elif [[ $complexity == 2 ]]; then
password="A-Za-z0-9"
else 
password='A-Za-z@#$%^&*+_-'
fi
tr -dc $password </dev/urandom | head -c $length;echo ''
