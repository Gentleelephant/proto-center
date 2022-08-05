#!/usr/bin/env sh

FOLDER=`pwd`
PARAMS=".pb.go"

function read_dir() {
    for file in `ls $1`
    do
        if [ -d $1/$file ];then
            cd $1/$file
            read_dir $1"/"$file
            cd ..
        else
            temp=`pwd`/$file
            if [[ $temp == *$PARAMS ]]; then
                echo "Generating $temp"
                protoc-go-inject-tag -input=$temp
            fi
        fi
    done
}

read_dir $FOLDER