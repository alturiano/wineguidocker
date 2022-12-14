#!/bin/bash

# Wait the cookie connections
sleep 3

# Add the magic cookies from the xserver
while read cookie; do
  # shellcheck disable=SC2086
  xauth add $cookie
done < /mcookie/cookies.txt

# Start Application. e.g wine
wine explorer /desktop=L4D2,"$GEOMETRY" "bin/$EXECUTABLE"
