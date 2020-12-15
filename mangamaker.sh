#!/bin/bash
i=100

for D in `ls -d */`
do
    cd $D
        K=$(ls | head -1) 
        if [[ "${K: -4}" == ".jpg" ]]
        then 
            convert *.jpg $i.pdf 
            #echo "jpg la bu"
        else
            convert *.png $i.pdf 
            #echo "png la bu"
        fi
    mv *.pdf /home/xeno/Hunch/Warzone/MangaArea/Pdf
    ((i=i+1))
    cd ..
done