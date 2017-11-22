#!/bin/bash

function balancer(){
  local new_input=$1
  # Set character count so we can run it through a while loop
  char_count=$(echo -n $new_input|wc -m|awk '{print $1}')
  # Set old to 0, so if input is empty, it ends pretty dang quick.
  old_char_count=0
  # While fun!
  #  If character count is greater than one, and old and new counts don't match, continue through the loop.
  while [ $char_count -gt 1 ] && [ $old_char_count != $char_count ]; do
    # Store the current character count, because we need it...
    old_char_count=$char_count
    # Remove all instances of ()
    new_input=$(echo -n $new_input|sed -e 's/()//g')
    # Get new character count
    char_count=$(echo -n $new_input|wc -m|awk '{print $1}')
  done
  # END while loop
  # If we are at 0, that means we had 100% match up. Return 0
  if [ $(echo -n $new_input|wc -m|awk '{print $1}') = 0 ] ; then
    echo true
  # If we have a character count that isn't 0, that means we had characters left over.  This means we are a failure, and should feel bad.
  else
    echo false
  fi
# Matching bracket :)
}
