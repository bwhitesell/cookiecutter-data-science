#!/bin/bash

BUCKET={{ cookiecutter.s3_bucket }}
PROFILE={{ cookiecutter.aws_profile }}
PROJECT_NAME={{ cookiecutter.repo_name }}
PYTHON_INTERPRETER={{ cookiecutter.python_interpreter }}

# Create Virtual Environment.
yes | pyenv virtualenv 3.6.2 $PROJECT_NAME
pyenv activate $PROJECT_NAME

# Install python dependencies.
pip install -r requirements.txt

# generate config file
source data/version.sh
echo "BUCKET='{{ cookiecutter.s3_bucket }}'" >> config/config.sh
echo "PROFILE='{{ cookiecutter.aws_profile }}'" >> config/config.sh
echo "PROJECT_NAME='{{ cookiecutter.repo_name }}'" >> config/config.sh
echo "PYTHON_INTERPRETER='{{ cookiecutter.python_interpreter }}'" >> config/config.sh
echo "BUCKET='{{ cookiecutter.s3_bucket }}'" >> config/config.sh
echo 'VERSION='$s3_VERSION >> config/config.sh
