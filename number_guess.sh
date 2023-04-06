#!/bin/bash

# Generate random number between 1 and 1000
MYNUMBER=$((($RANDOM % 1000) + 1))
# echo "$MYNUMBER"
# Asking the user to enter his/her username
echo "Enter your username:"
read USERNAME
USERNAME=${USERNAME:0:22}
#Defining the connection string
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"
# Extracting the data of the user from the database
QUERY_RECORD=$($PSQL "SELECT username, games_played, best_game FROM number_guess WHERE username='$USERNAME'")
#echo $QUERY_RECORD
# Evaluate if the username exists in the database
if [[ -z $QUERY_RECORD ]]
then
      echo "Welcome, $USERNAME! It looks like this is your first time here."
else
      IFS=" " read USERNAME BAR GAMES_PLAYED BAR BEST_GAME <<< $QUERY_RECORD
      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
#echo "FIRST ANALYSIS: $BEST_GAME"
# Now let's loop until the user guesses the number
guessed=false
ATTEMPTS=0
MESSAGE="Guess the secret number between 1 and 1000:"
while [[ "$guessed" == false ]]
do
      # Let's ask the user for a number
      echo $MESSAGE
      read NUMBER_USER
      # Evaluate if the number is an integer
      if [[ ! $NUMBER_USER =~ ^[0-9]+$ ]]
      then
            MESSAGE="That is not an integer, guess again:"
      else
            ATTEMPTS=$((ATTEMPTS + 1))
            if [[ $NUMBER_USER -eq $MYNUMBER ]]
            then
                  guessed=true
                  # Save into database
                  if [[ -z $QUERY_RECORD ]]
                  then
                        # INSERT
                        TRX_RESULT=$($PSQL "INSERT INTO number_guess(username, games_played, best_game) VALUES ('$USERNAME', 1, $ATTEMPTS)")
                  else
#                        echo "ATTEMPTS $ATTEMPTS"
#                        echo "BEST_GAME $BEST_GAME"
                        # Evaluate if this is the best game
                        if [[ $ATTEMPTS -lt $BEST_GAME ]]
                        then
                              BEST_GAME_EVER="$ATTEMPTS"
                        else
                              BEST_GAME_EVER="$BEST_GAME"
                        fi
                        # UPDATE
                        TRX_RESULT=$($PSQL "UPDATE number_guess SET games_played=games_played+1, best_game=$BEST_GAME_EVER WHERE username='$USERNAME'")
                  fi
                  # Show the message to the user
                  echo "You guessed it in $ATTEMPTS tries. The secret number was $MYNUMBER. Nice job!"
            elif [[ $NUMBER_USER -gt $MYNUMBER ]]
            then
                  # show message
                  MESSAGE="It's lower than that, guess again:"
            else
                  # show message
                  MESSAGE="It's higher than that, guess again:"
            fi 
      fi
done
#
