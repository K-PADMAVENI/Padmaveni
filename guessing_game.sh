#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "kindly enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Less then the exact number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is Greater then the exact number"
        else
            echo " congratulations!!!,you are correct!"
        break;
        fi
    done
}
echo "guess number of files in the current directory!"
guess
