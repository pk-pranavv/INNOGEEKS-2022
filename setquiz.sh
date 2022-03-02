#!/bin/bash
echo "Set quiz for students"
echo "Enter the number of questions you wanna set"
read noofque
echo "Kindly remember the format in which questions needs to be added"
echo "==========================================================="
sleep 1
clear
i=0
while (($i != $noofque))
do
echo "Enter the question statement"
read question
echo "Enter the 4 options"
echo "Option 1"
read option1
echo "Option 2"
read option2
echo "Option 3"
read option3
echo "Option 4"
read option4
clear
echo "$question" >> quiz.txt

option="a)${option1} b)${option2} c)${option3} d)${option4}"
echo "$option" >> quiz.txt

echo "Enter the answer option"
echo "================" 
echo "$option"
read ans

echo "$ans" >> quiz.txt
echo "Question $i added"
i=$((i+1))
done
