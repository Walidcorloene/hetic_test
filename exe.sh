#!/bin/bash

let "exec=0"
let "noexec=0"
let "rep=0"

for file in `ls $1`:
do
  if [ -d $file ];
  then
     let "rep=$rep+1"
     echo "number of rep $rep and rep is $file" >> directo.txt
  elif [ -x $file ];
     then
        let "exec=$exec+1"
        echo "number of exec file $exec and the file is $file" >> executable.txt
  else
     let "noexec=$noexec+1"
     echo "number of no exec $noexec and noexec is $file" >> noexec.txt
  fi;
done;
