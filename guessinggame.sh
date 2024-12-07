#!/usr/bin/env bash

# Function to handle the guessing logic
guessing_game() {
    local correct_answer=$(ls -1 | wc -l)  # Get the number of files in the current directory
    local guess=-1
    while [[ $guess -ne $correct_answer ]]; do
        # Ask for the user's guess
        echo "How many files are in the current directory?"
        read guess

        # Check if the guess is correct, too high, or too low
        if [[ $guess -lt $correct_answer ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $correct_answer ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed correctly."
        fi
    done
}

# Call the function to start the game
guessing_game
