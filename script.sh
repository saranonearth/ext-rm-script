#!/bin/bash

read -p "File extension:" extension

extension=${1?Error: No extension provided!}

for FILE in */;
do
    if [ -d "$FILE" ]; then
        cd $FILE
        rm -rf *.extension
        cd ..
    fi
done

print_date()
{
    echo `date`
    return
}

print_date

exit $?