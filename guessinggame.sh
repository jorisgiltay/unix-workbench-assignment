#!usr/bin/env bash
#File: guesinggame.sh
#Author: Joris Giltay, 26-03-2021

#Get the current directory name and put it in a variable
dirname=${PWD##*/}

#Function that returns the amount of files in current directory and assigns it to the variable: nr_of_files
function count_files {
 nr_of_files=$( ls | wc -l)
}

#Prompt the user for input
echo "Please guess the amount of files in the current directory:'$dirname'"

#run the file counting function
count_files

#Check if input is valid, higher or lower than nr_of_files
while true;
do
  read response
  if ! [[ $response =~ ^[0-9]+$ ]];
    then echo "Not a valid integer please enter an integer (greater than or equal to 0)"
  elif (( $response > $nr_of_files ));
    then echo "There are less than $response files in the directory '$dirname', please try again"
  elif (( $response < $nr_of_files ));
    then echo "There are more than $response files in the directory '$dirname', please try again"
  else
   break
  fi
done

#Congratulate user on a correct answer
echo "Well done! The amount of files in the directory '$dirname' equals $response"
