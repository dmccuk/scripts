#!/bin/bash

# Script to grab the latest number of Students

STUDENTS=`curl -s https://www.udemy.com/user/dennis-mccarthy-2/ | grep -A3 Students | tail -1`
OLDNUMBER=`cat /tmp/result.dm`

echo "Current students="$STUDENTS
echo "Previous number of students="$OLDNUMBER
if [ $STUDENTS -gt $OLDNUMBER ]
then
  echo "You now have $STUDENTS Students!"
  echo $STUDENTS > /tmp/result.dm
else
  echo "No change"
fi

