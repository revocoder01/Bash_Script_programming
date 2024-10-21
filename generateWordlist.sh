#!/bin/bash

#Function to generate wordlists
generate_lists(){
    local prefix=$1
    local characters=$2
    local length=$3

    if [ $length -eq 0 ]; then
        echo $prefix
    else
        for char in $(seq 1 ${#character}); do
            local next_char=${characters:char-1:1}
            generate_lists "$prefix$next_char" "$characters" $(($length - 1))
        done
    fi
}

#Help menu function
help_menu(){
    echo "USAGE : $0 <character_sets> <length> <out_file>"
    echo "length : number of character in passwords what you want"
    echo "out_file : the number of output file(e.g password.txt)"
    echo "Character sets : "
    echo "      s - Include small letters"
    echo "      c - Include capital letters"
    echo "      n - Include Numbers"
    echo "      p - Include special characters"
    echo "example: $0 scnp 8 output_file.txt"
    exit 1
}

#arguments chacking
if [ $# -ne 3 ]; then
    help_menu
fi

character_sets=$1
length=$2
output_file=$3

characters=""

#character ပြင်ဆင်ခြင်း
if [[ "$character_sets" == *"s"* ]]; then
    character+="abcdefghijklmnopqrstuvwxyz"
fi
if [[ "$character_sets" == *"c"* ]]; then
    character+="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
fi
if [[ "$character_sets" == *"n"* ]]; then
    character+="0123456789"
fi
if [[ "$character_sets" == *"p"* ]]; then
    character+="!@#$%^&*"
fi

#calling generate function
generate_lists "" "$characters" $length > $output_file

echo "Wordlist generated and save to $output_file"
