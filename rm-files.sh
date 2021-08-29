#!/bin/sh


GREEN='\033[0;32m'
RED='\033[0;31m'

read -p "File extension:" extension

if [ -z "$extension" ];
then
    echo "${RED}No extension found. Please enter an extension"
    exit $?
fi
echo "Starting at" `date`

for oldname in *; do newname=`echo $oldname | sed -e 's/ //g'`; mv "$oldname" "$newname";
done

for FILE in */;
do
    if [ -d "$FILE" ]; then

        cd $FILE
        rm -rf *."$extension"
        cd ..
    fi
done


echo "${GREEN}Done"

exit $?
