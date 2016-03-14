#!/bin/bash

# Intall dependenceis.
apt-get --yes install redis-server virtualenvwrapper

# Configure project.
/vagrant/scripts/virtual_env.sh
