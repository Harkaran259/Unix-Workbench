echo "[The Guessing game]"

function Guess {
    echo "How many files do you think are there in the current directory:"
    read guess
    number_of_files=$(ls -1 | wc -l)
}

Guess

while [[ $guess -ne $number_of_files ]]
do
    if [[ $guess -lt $number_of_files ]]
    then
        echo "Too low."
    else
        echo "Too high."
    fi
    Guess
done

echo "Congratulations!! You got the right answer, here is the list of files:"
echo "---" && ls -1