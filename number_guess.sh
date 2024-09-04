#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USER_NAME

LAST_QUERY=$($PSQL "SELECT name, games_played, takes FROM ranked WHERE name='$USER_NAME'")

# if name doesn't exist
if [[ -z $LAST_QUERY ]]
then
  echo "Welcome, $USER_NAME! It looks like this is your first time here."
  GAMES=0
  BEST=9999
else
  IFS="|" read NAME GAMES BEST <<< "$LAST_QUERY"
  echo "Welcome back, $NAME! You have played $GAMES games, and your best game took $BEST guesses."
fi

# Create random number in range
NUMBER_TO_GUESS=$(( RANDOM % 1000 + 1 ))
CURRENT_TAKE=0

QUERY_USER () {
  if [[ -z $1 ]]
  then
    echo "Guess the secret number between 1 and 1000:"
  else
    echo "$1"
  fi

  read USER_GUESS
  CURRENT_TAKE=$(( CURRENT_TAKE + 1 ))

  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    QUERY_USER "That is not an integer, guess again:"
  else
    if [[ $USER_GUESS -lt $NUMBER_TO_GUESS ]]
    then
      QUERY_USER "It's higher than that, guess again:"
    elif [[ $USER_GUESS -gt $NUMBER_TO_GUESS ]]
    then
      QUERY_USER "It's lower than that, guess again:"
    else
      echo "You guessed it in $CURRENT_TAKE tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
      
      NEW_GAMES=$(( GAMES + 1 ))

      if [[ $CURRENT_TAKE -lt $BEST ]]
      then
        $PSQL "UPDATE ranked SET games_played=$NEW_GAMES, takes=$CURRENT_TAKE WHERE name='$USER_NAME'"
      else
        $PSQL "UPDATE ranked SET games_played=$NEW_GAMES WHERE name='$USER_NAME'"
      fi

      if [[ $GAMES -eq 0 ]]
      then
        $PSQL "INSERT INTO ranked(name, games_played, takes) VALUES('$USER_NAME', $NEW_GAMES, $CURRENT_TAKE)"
      fi
    fi
  fi
}

QUERY_USER