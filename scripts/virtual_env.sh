#!/bin/sh

LOCATION="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PYTHON_VERSION=python3.5
VENV_PATH=${LOCATION}/../venv
REQUIREMENTS_PATH=${LOCATION}/../requirements.txt


# Remove existing virtualenv if present.
if [ -e $VENV_PATH ]; then
	rm -rf $VENV_PATH
fi

# Create new virtualenv.
virtualenv --python=${PYTHON_VERSION} $VENV_PATH

# Install dependencies.
source ${VENV_PATH}/bin/activate
pip install -r $REQUIREMENTS_PATH
