#!/bin/bash

echo "Select action:"
echo "ssh - add public ssh key"
read action

if [ "$action" == "ssh" ]; then
    GITHUB_USER=geldim
    TARGET_FILE=$HOME/.ssh/authorized_keys
    
    echo "Allowing github user $GITHUB_USER to authorize as $(whoami) on this computer"
    
    curl -s https://github.com/$GITHUB_USER.keys >> $TARGET_FILE
fi
