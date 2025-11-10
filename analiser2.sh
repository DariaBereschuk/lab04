#!/bin/bash
for file in $(ls $1)
do
   for info in $(cat $1/$file)
   do
      mail=$(echo $info | cut -d ":" -f3)
      if [[ $mail == *"@spbstu.ru"* ]]
      then
           echo "$info"
      fi
   done
done   
