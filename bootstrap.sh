#! /bin/bash
set -ex

if [[ $TRAVIS_PYTHON_VERSION == 'nightly' ]];
    then travis_retry pip install -U setuptools;
fi
pip install -e .[dev]
pre-commit install
