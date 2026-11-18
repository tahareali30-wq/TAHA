#!/bin/bash

# Count regular files in the current directory (not subdirectories).
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Store the number of files to guess.
correct_number=$(count_files)

echo "Guessing Game"
echo "How many files are in the current directory?"

# Keep asking until the user guesses the correct number.
while true; do
    read -r -p "Your guess: " guess

    # Make sure the input contains only digits.
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid non-negative number."
    elif [ "$guess" -lt "$correct_number" ]; then
        echo "Too low! Try again."
    elif [ "$guess" -gt "$correct_number" ]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done
