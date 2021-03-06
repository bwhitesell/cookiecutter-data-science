# Slated's Data Science Cookiecutter

_A logical, reasonably standardized, but flexible project structure for doing and sharing data science work within the slated organization._


#### [Project homepage](https://github.com/bwhitesell/cookiecutter-sds)


### Slated D.S. Stack:
-----------
 Python dist t.b.r. by https://repo.continuum.io/ but for now:
 - Python 3.6.2
 - pyenv-virtualenv
 - django 2.0 + / flask .12 +
 - postgresql

 - [Cookiecutter Python package](http://cookiecutter.readthedocs.org/en/latest/installation.html) >= 1.4.0: This can be installed with pip by or conda depending on how you manage your Python packages:

``` bash
$ pip install cookiecutter
```

or

``` bash
$ conda config --add channels conda-forge
$ conda install cookiecutter
```

### pyenv-virtualenv
    to be replaced by conda's virtual env mgt.


### To start a new project, run:
------------

    cookiecutter https://github.com/bwhitesell/cookiecutter-sds.git


### The resulting directory structure
------------

The directory structure of your new project looks like this: 

```
├── LICENSE
├── Makefile                                   <-- Makefile with commands like `make data` or `make train`
├── README.md
├── data
│   ├── external                               <-- Data from third party sources.
│   ├── interim                                <-- Intermediate data that has been transformed.
│   ├── processed                              <-- The final, canonical data sets for modeling.
│   └── raw                                    <-- The original, immutable data dump.
├── docs                                       <-- Folder for storing documentation
├── model_hosting
│   ├── app.py                                 <-- Starter flask app to quickly share a model with the world. NOT for use as a formal web-wrapper. Use django for that.
│   ├── static                                 <-- Folder for static files
│   │   ├── css                                <-- Bootstrap Pre-installed
│   │   │   ├── bootstrap-grid.css
│   │   │   ├── bootstrap-grid.css.map         
│   │   │   ├── bootstrap-grid.min.css
│   │   │   ├── bootstrap-grid.min.css.map
│   │   │   ├── bootstrap-reboot.css
│   │   │   ├── bootstrap-reboot.css.map
│   │   │   ├── bootstrap-reboot.min.css
│   │   │   ├── bootstrap-reboot.min.css.map
│   │   │   ├── bootstrap.css
│   │   │   ├── bootstrap.css.map
│   │   │   ├── bootstrap.min.css
│   │   │   └── bootstrap.min.css.map          
│   │   ├── img
│   │   └── js
│   │       ├── bootstrap.bundle.js
│   │       ├── bootstrap.bundle.js.map
│   │       ├── bootstrap.bundle.min.js
│   │       ├── bootstrap.bundle.min.js.map
│   │       ├── bootstrap.js
│   │       ├── bootstrap.js.map
│   │       ├── bootstrap.min.js
│   │       └── bootstrap.min.js.map
│   └── templates
│       └── base.html
├── models                                     <-- Trained and serialized models, model predictions, or model summaries
├── notebooks                                  <-- Jupyter notebooks. Naming convention is a number (for ordering),
│                                                     the creator's initials, and a short `-` delimited description, e.g.
│                                                     `1.0-jqp-initial-data-exploration`.
│   ├── EDA                                    <-- Notebooks specifically for Exploratory Data Analysis
│   ├── reports                                <-- Notebooks specifically for more formal reporting
│   └── utils                                  <-- Utility Notebooks
├── references
├── reports                                    <-- Folder for finalized formal reporting in 'immutable' formats.
│   └── figures                               
├── requirements.txt                           <-- If a package is required to run anything in this project, it must be added to the requirements.txt file
├── src                                        <-- Source Code
│   ├── __init__.py
│   ├── data
│   │   └── make_dataset.py
│   ├── features
│   │   └── build_features.py
│   ├── models
│   │   ├── predict_model.py
│   │   └── train_model.py
│   ├── utils
│   └── visualization
│       └── visualize.py
└── test_environment.py
```


### Installing development requirements
------------

    source deploy.sh

### Running the tests
    Testing Philosophy:
    A lot of code written for the sake of exploration will never see the light of day. Tests are
    only necessary once the code becomes necessary to the functionality of the project.
------------

    py.test tests


### Objectives and Principles to follow:
    Do what is most likely to provide value and be product-izable FIRST.

    Only establish a well defined-spec or goal if it is known or highly likely to be achievable.

    Maximize the ratio of points dedicated to shipping products to exploratory-points.

    Ensure a flexible feature/goal generation process to always.

    Keep a record of what is known.