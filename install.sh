#!/bin/bash

# Move all files to home directory

cp -r .ssh ~
cp -r .vim ~

# Make current shell run new settings now

# Install packages
yum install -y screen
