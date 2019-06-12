#!/bin/bash
newtag=''
for i in $(grep -o "[^\.]*" < version);
do
    if [ $newtag ];
    then
        newtag=$newtag.$i;
    else
        newtag=$i;
    fi
    docker tag gcr.io/$PROJECT_ID/$APP_NAME gcr.io/$PROJECT_ID/$APP_NAME:$newtag
done
docker tag gcr.io/$PROJECT_ID/$APP_NAME gcr.io/$PROJECT_ID/$APP_NAME:$newtag-$BUILD_ID