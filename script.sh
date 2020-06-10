#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'

read -p "File extension:" extension

if [ -z "$extension" ];
then
    echo -e "${RED}No extension found. Please enter an extension"
    exit $?
fi
echo "Starting at" `date`


for FILE in */;
do
    if [ -d "$FILE" ]; then
        cd $FILE
        logger FILE_LIST
        rm -rf *."$extension"
        cd ..
    fi
done

echo -e "${GREEN}Done"

exit $?