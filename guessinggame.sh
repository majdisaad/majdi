#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -1 | wc -l)
    echo $count
}

# Main game loop
while true; do
    correct_count=$(count_files)
    
    # Ask the user for their guess
    echo "How many files are in the current directory? Guess: "
    read user_guess

    # Check if the guess is correct, too low, or too high
    if [[ $user_guess -eq $correct_count ]]; then
        echo "Congratulations! You guessed correctly. There are $correct_count files."
        break
    elif [[ $user_guess -lt $correct_count ]]; then
        echo "Too low. Try again."
    else
        echo "Too high. Try again."
    fi
done
