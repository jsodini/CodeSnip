#!/bin/bash

# Install dependencies.
apt-get --yes install redis-server virtualenvwrapper

# Configure project.
/vagrant/scripts/virtual_env.sh
