#!/bin/bash
if [ "$1" = "deny" ]; then
    aws --profile dumbBoi s3 ls
fi
if [ "$2" = "s3" ]; then
    if [ "$3" = "cp_to" ]; then
        printf "copying this beautiful human to S3\n"
        aws --profile $1 s3 cp --recursive ./frank s3://thicc-boi-thiccbucket-1lqm0m2iu7gji/new_frank/
    fi
    if [ "$3" = "cp_from" ]; then
        printf "copying the golden god from S3\n"
        aws --profile $1 s3 cp --recursive s3://thicc-boi-thiccbucket-1lqm0m2iu7gji/ .
    fi
    if [ "$3" = "ls" ]; then
        printf "spitting out bucket contents\n"
        aws --profile $1 s3 ls --recursive s3://thicc-boi-thiccbucket-1lqm0m2iu7gji/
    fi
fi

