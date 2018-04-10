#!/bin/bash

source config/config.sh
# aws s3 cp s3://$BUCKET/data/version.sh data/version.sh --profile $PROFILE

source data/version.sh
if awk 'BEGIN{exit ARGV[2]>ARGV[1]}' "$s3_VERSION" "$VERSION"
then
    aws s3 sync s3://$BUCKET/data/ data/ --profile $PROFILE
    echo 's3 sync complete.'
    rm config/config.sh
    echo "BUCKET="$BUCKET >> config/config.sh
    echo "PROFILE="$PROFILE >> config/config.sh
    echo "PROJECT_NAME="$PROJECT_NAME >> config/config.sh
    echo "PYTHON_INTERPRETER="$PYTHON_INTERPRETER >> config/config.sh
    echo "BUCKET="$BUCKET >> config/config.sh
    echo 'VERSION='$s3_VERSION >> config/config.sh
    
else
    echo 's3 already up-to-date.'
fi

    
