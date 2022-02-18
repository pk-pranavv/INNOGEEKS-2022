#!/bin/bash
clear
echo
echo "Enter your full name"
read name
clear
echo "Welcome $name"
echo "Take a breath !!! You quiz will start in "
for i in 5 4 3 2 1
do
    echo "$i"
    sleep 1
done
clear
score=0
quizstarttime=$(date)
file='quiz.txt'
noofque=0
i=1
echo "===========   Answer Wisely   ============="
while read line 
do
    if (($i % 3 != 0))
    then
        echo $line
    else    
        noofque=$((noofque + 1))
        echo "Enter option a/b"
        read ans < /dev/tty
        if [ "$line" = "$ans" ]
        then
            echo "Correct Answer!!!!"
            score=$((score + 1))
        else    
            echo "Wrong answer"
        fi
    fi
    i=$((i+1))
done < $file
clear
echo "======= Quiz completed =========="
echo "Results"
echo "Given by: $name"
echo "Start Time : $quizstarttime"
echo "Marks : $score / $noofque"


