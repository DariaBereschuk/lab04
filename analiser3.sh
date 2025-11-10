#!/bin/bash
for file in $(ls $1)
do
minors=0
adults=0
   for info in $(cat $1/$file)
   do
     age=$(echo $info | cut -d ":" -f2)
     if [ $age -lt 18 ];
     then minors=$((minors+1))
     else adults=$((adults+1))
     fi
   done
   echo "minors $minors,adults $adults"
done
