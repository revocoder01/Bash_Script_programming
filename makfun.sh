#!/bin/bash

# Function to create a directory
create_directory() {
    local dir_name=$1

    # Check if the directory already exists
    if [ -d "$dir_name" ]; then
        echo "Directory '$dir_name' already exists."
    else
        mkdir "$dir_name"
        echo "Directory '$dir_name' created successfully."
    fi
}

# Main script execution
read -p "Enter the name of the directory you want to create: " directory_name

# Call the create_directory function
create_directory "$directory_name"
