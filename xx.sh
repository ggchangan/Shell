#!/bin/bash


for arg in $*
do
    echo $arg
    if [ $arg = '-d' ];
    then
        cls='true';            
    fi
done

if [ $cls = 'true' ];
then
    echo 'true';
fi
