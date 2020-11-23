echo "Let us begin: How many files do you think this directory contains"

function readnum {
read guess
while [[ $guess =~ [^0-9] ]]
do
echo "please enter a valid number"
read guess
done
}

readnum
exact=`ls | wc -l`

while [[ $guess -ne $exact ]]
do
if [[ $guess -gt $exact ]]
then
echo "your guess is higher than the correct answer. Please enter another value"
readnum
else
echo "your guess is lower than the correct answer. Please enter another value"
readnum
fi
done
echo "Congratulations!! The correct number is indeed $guess"
