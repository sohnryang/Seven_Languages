number := (Random value(99) + 1) floor
standardIO := File standardInput
oldGuess := nil

10 repeat(
    "Guess a number (1..100): " print
    guess := standardIO readLine asNumber
    if(guess == number, break)
    if(oldGuess, if((number - guess) abs >= (number - oldGuess) abs, "Getting further..." println, "Getting closer...", println))
    oldGuess = guess
)

if(guess == number, "You guessed the right number!" println, ("Wrong number. The answer is: " .. number) println)
