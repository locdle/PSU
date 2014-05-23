#!/bin/bash
#Created by Peter Gicking (swook)
#This small script pulls all the files from remote directories for CS333
#It must be provided an argument, 
#Example:
# ./getall.sh http://web.cecs.pdx.edu/~harry/Blitz/OSProject/p2/
echo "This will put all the files in your CURRENT DIRECTORY!"
echo "Press enter to continue or ^C to quit"
read res

echo "Pulling from $1"

for file in $(curl -s $1|
                  grep href |
                  sed 's/.*href="//' |
                  sed 's/".*//' |
                  grep '^[a-zA-Z].*'); do
    echo "Fetching $file"
    curl -s -O $1$file
done
