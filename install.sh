# Move all files to home directory
mv .ssh ~
mv .vim ~
mv .bash_profile ~
mv .bashrc ~

# Make current shell run new settings now
. ~/.bash_profile

# Install packages
yum install -y screen
