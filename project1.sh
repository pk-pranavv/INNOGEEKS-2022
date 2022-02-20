#!/bin/bash

function signup()
{
echo "Enter Username :"
read name
# also to check if username already exist
echo $name >> data.txt
echo "Enter your password :"
read password
echo $password >> data.txt

}

function sign_in()
{
    echo "Enter username :"
    read name
    # to check if username exists or not
    echo "Enter Password :"
    read Password

    echo "Please Re-enter password.."
    read password

    #to check if password is correct

    echo "Sign-in Successful.."
    echo "Now choose your option.."
    echo "
          1. Take a test
          2. View a test
          3. Exit"

    read var 
    if [$var -eq 1]
    then
        echo "Your test is going to start.."
    #command to start test..
    fi
}

function main_menu()
{
    echo "Welcome to the Academy..."
    echo "Please choose from the below options"

    echo "
          1. Sign up
          2. Sign in
          3. Exit"
    echo "Enter your option :"

    read num

    if [ $num -eq 1 ]
    then
        signup

    elif [ $num -eq 2 ]
    then    
        sign_in

    elif [ $num -eq 3 ]
    then
        echo "Thank you for your time, you are exiting..."

    else
        echo "Please enter a valid input.."
    fi
}


main_menu













































# while [ 1 ]
# do
#     echo " If you are new user select sign-up else sign-in "

#     echo " Enter 1 to signup
#             Enter 2 to signin
#             Enter 3 to exit"
#     read $num
#     if ($num == 3)
#     {
#         echo "You are exiting"
#         break
#     }
#     if ($num == 1)
#     {
#         echo "Enter your credentials :"
#         signup
#     }
#     if ($num == 2)
#     {
#         echo "Enter your credentials :"
#         sign_in
#     }
#         # else
#         # {
#         #     echo " Please enter a valid input...."
#         # } 
# done