#!/bin/bash

# Intall dependenceis.
apt-get --yes install redis-server virtualenvwrapper

# Configure project.
pushd /vagrant/scripts
./virtual_env.sh
popd
