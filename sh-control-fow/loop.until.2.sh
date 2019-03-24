#!/bin/bash

# The following script may be useful if your git host is having downtime and instead of manually typing git pull multiple times until the host is online you can run the script once.
# It will try to pull the repository until it is successfully pulled.

until git pull &> /dev/null
do
    echo "Waiting for the git host ..."
    sleep 1
done

echo -e "\nThe git repository is pulled."
