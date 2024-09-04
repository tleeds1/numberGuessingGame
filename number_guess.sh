#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USER_NAME

LAST_QUERY=$($PSQL "SELECT name, MAX(games_played), MIN(takes) FROM ranked WHERE name='$USER_NAME' GROUP BY name")

# if name doesn't exist
if [[ -z $LAST_QUERY ]]
then
  echo "Welcome, $USER_NAME! It looks like this is your first time here."
else
  IFS="|" read NAME GAMES BEST <<< "$LAST_QUERY"
  echo "Welcome back, $NAME! You have played $GAMES games, and your best game took $BEST guesses."
fi

