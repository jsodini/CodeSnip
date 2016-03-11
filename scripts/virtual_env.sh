#!/bin/sh

PYTHON_VERSION=python2.7
VENV_PATH=../venv

# Remove existing virtualenv if present.
if [ -e $VENV_PATH ]; then
	rm -rf $VENV_PATH
fi

# Create new virtualenv.
virtualenv --python=${PYTHON_VERSION} $VENV_PATH

# Install dependencies.
source ${VENV_PATH}/bin/activate
pip install -r ../requirements.txt
