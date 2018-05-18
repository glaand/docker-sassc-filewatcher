#!/bin/bash
${SASSC_CMD:=":"}
inotifywait -m /sassc -e create -e moved_to -e modify |
    while read path action file; do
        if [[ "$file" =~ .*scss$ ]] || [[ "$file" =~ .*sass$ ]] ; then
            echo "Running sassc..."
            eval $SASSC_CMD
        fi
    done