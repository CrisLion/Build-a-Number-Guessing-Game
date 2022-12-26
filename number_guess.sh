#!/bin/bash

RANDOM_NUMBER=$(( $RANDOM % 1000 +1 ))
ATTEMPTS_COUNT=0
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

SCORE_USER_RESULT=$($PSQL "SELECT username, games_played, best_game FROM scores WHERE username='$USERNAME';")

if [[ -z $SCORE_USER_RESULT ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO scores(username) VALUES('$USERNAME');")
else
  echo $SCORE_USER_RESULT | while IFS=" | " read USERNAME GAMES_PLAYED BEST_GAME 
  do 
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

echo "Guess the secret number between 1 and 1000:"
read USER_NUMBER

while true
do
  (( ATTEMPTS_COUNT++ ))
  if [[ ! $USER_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"

  elif [[ $USER_NUMBER -gt $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again:"

  elif [[ $USER_NUMBER -lt $RANDOM_NUMBER  ]]
  then
    echo "It's higher than that, guess again:"

  else

    (( GAMES_PLAYED++ ))
    if [[ $ATTEMPTS_COUNT -lt $BEST_GAME || $BEST_GAME -eq 0 ]]
    then
      BEST_GAME=$ATTEMPTS_COUNT
    fi
    UPDATE_RESULT=$($PSQL "UPDATE scores SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE username='$USERNAME';")

    echo "You guessed it in $ATTEMPTS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
    break
  fi

  read USER_NUMBER
done


