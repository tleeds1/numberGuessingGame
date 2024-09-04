#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
GUESS_COUNT=0

# generate random number
RANDOM_NUMBER=$[ $RANDOM % 1000 + 1 ]

# get user's username
echo "Enter your username:"
read USER

# check if username is in the database
USERNAME_EXISTS=$($PSQL "SELECT name FROM ranked WHERE name='$USER'")

# if not found
if [[ -z $USERNAME_EXISTS ]]
then
  # insert username in database
  INSERT_USER_INFO_RESULT=$($PSQL "INSERT INTO ranked(name, games_played) VALUES('$USER', 0)")

  # get user info
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM ranked WHERE name='$USER'")
  BEST_GAME=$($PSQL "SELECT best FROM ranked WHERE name='$USER'")
  USERNAME=$($PSQL "SELECT name FROM ranked WHERE name='$USER'")

  # greet user
  echo "Welcome, $USERNAME! It looks like this is your first time here."

# if username is found
else

  # get user info
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM ranked WHERE name='$USER'")
  BEST_GAME=$($PSQL "SELECT best FROM ranked WHERE name='$USER'")
  USERNAME=$($PSQL "SELECT name FROM ranked WHERE name='$USER'")

  # greet user
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

GUESS () {
  read USER_GUESS

  # if the guess is not an integer
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GUESS
  # if the guess is higher than the secret number
  elif [[ $USER_GUESS -gt $RANDOM_NUMBER ]]
  then
    let "GUESS_COUNT++"
    echo "It's lower than that, guess again:"
    GUESS
  # if the guess is lower
  elif [[ $USER_GUESS -lt $RANDOM_NUMBER ]]
  then
    let "GUESS_COUNT++"
    echo "It's higher than that, guess again:"
    GUESS
  # if the guess is correct
  elif [[ $USER_GUESS -eq $RANDOM_NUMBER ]]
  then
    let "GUESS_COUNT++"
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
  fi
}

echo "Guess the secret number between 1 and 1000:"
GUESS

# UPDATE USER INFO

# update games_played
UPDATE_GAMES_PLAYED=$($PSQL "UPDATE ranked SET games_played=ranked.games_played+1 WHERE name='$USERNAME'")

# update best_game

if [[ -z $BEST_GAME || $BEST_GAME -gt $GUESS_COUNT ]]
then
  UPDATE_BEST_GAME=$($PSQL "UPDATE ranked SET best=$GUESS_COUNT WHERE name='$USERNAME'")
fi
