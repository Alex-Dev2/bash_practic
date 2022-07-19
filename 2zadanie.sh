#!/bin/bash

read -e -p "Enter the path to the file: " -i "/home/" FILEPATH
read -e -p "Enter name the file: " -i "file" FILENAME
read -e -p "Enter name the parents folder: " -i "firstFolder" firstFolder
read -e -p "Enter name the child folder: " -i "childFolder" childFolder
read -e -p "Enter quantity the parent folder: " firstFolderQ
read -e -p "Enter quantity the child folder: " childFolderQ
read -e -p "Enter quantity the files: " FILEQ
cd $FILEPATH
    for (( i=1; i<$firstFolderQ+1; i++ )); do
        mkdir $firstFolder$i
        cd $firstFolder$i
            for (( j=1; j<$childFolderQ+1; j++ )); do
                mkdir $childFolder$j
                cd $childFolder$j
                    for  (( k=1; k<$FILEQ+1; k++ )); do
                        touch $FILENAME$k
                    done
                    cd ..
            done
            cd ..
    done
