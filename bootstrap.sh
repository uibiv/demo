#! /bin/bash
set -ex

# see https://github.com/pypa/setuptools/issues/1257
if [[ $TRAVIS_PYTHON_VERSION == 'nightly' ]];
    then travis_retry pip install -U setuptools;
fi
pip install -e .[dev]
pre-commit install
