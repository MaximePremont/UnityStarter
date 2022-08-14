#!/bin/sh
FILE=./UnityHub.AppImage
if [ ! -f "$FILE" ]; then
    echo "$FILE does not exist, downloading it."
    wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage
    chmod +x $FILE
fi
$FILE >./logs.txt 2>./logs.txt &
