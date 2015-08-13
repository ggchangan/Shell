#! /bin/bash

count=1;
for img in *.[jJ][pP][gG] *.[pP][nN][gG]
do
    new=image-$count.${img##*.}

    mv "$img" "$new" 2> /dev/null

    if [ $? -eq 0 ];
    then
        echo "Renaming $img to $new"
        let count++
    fi
done
