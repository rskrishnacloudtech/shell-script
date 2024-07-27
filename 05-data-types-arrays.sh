#!/bin/bash

# Declaing an array.
MOVIES=("RRR" "SVSC" "DJT" "KALKI" "SALAR")

# Accessing the apecific array elements with index number.
echo "1st movie is: ${MOVIES[0]}"



# Accessing all the elements in the array.
echo "All the movies are: ${MOVIES[@]}"
