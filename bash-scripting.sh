#!/bin/bash


#this will prompt the user to enter a random directory name
echo "Enter the name of the directory: "
read dir_name

#Define the file names
file1="submission1.txt"
file2="submission2.txt"

#check if a file with the same name exists
if [ -f "$dir_name" ]; then
	echo "❌ Error: A file named '$dir_name' already exists. cannot create directory "
	exit 1

# If the directory already exists, proceed to create the two files inside it
elif [ -d "$dir_name" ]; then
    	echo "⚠️  Directory '$dir_name' already exists."
	echo "Please enter a different name for a new directory"
	exit 1

#If it doesn't exist, create the directory and files
else
	echo "Directory '$dir_name' doesn't exist. creating directory ..."
	mkdir "$dir_name"
	echo "Directory created 🎊"
	echo "creating files insdie the new directory..."
	touch "$dir_name/$file1" "$dir_name/$file2"
	echo "Files created: $file1 and $file2 inside '$dir_name'."
    

fi
