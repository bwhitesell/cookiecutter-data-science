BUCKET={{ cookiecutter.s3_bucket }}
PROFILE={{ cookiecutter.aws_profile }}
PROJECT_NAME={{ cookiecutter.repo_name }}
PYTHON_INTERPRETER={{ cookiecutter.python_interpreter }}

# Create Virtual Environment.
PROJECT_NAME='test2'
yes | pyenv virtualenv 3.6.2 $PROJECT_NAME
pyenv activate $PROJECT_NAME

# Install python dependencies.
pip install -r requirements.txt

# Download Data from s3
python3 $(BUCKET)
