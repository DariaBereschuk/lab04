#!/bin/bash
for file in $(ls $1)
do
max_age=0
min_age=150
   for info in $(cat $1/$file)
   do
     age=$(echo $info | cut -d ":" -f2)
     if [ $age -gt $max_age ];
     then max_age=$age
     fi
     if [ $age -lt $min_age ];
     then min_age=$age
     fi
   done
echo "max age is $max_age,min age is $min_age"
done
