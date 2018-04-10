#!/bin/bash


source config/config.sh
aws s3 sync data/ s3://$BUCKET/data/ --profile $PROFILE
