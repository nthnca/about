#!/bin/bash

# Exit on any errors
set -ex

# Try to do everything that requires user input first

# Set up keys for github
ssh-keygen -t rsa -f $HOME/.ssh/id_rsa -C "nathanbullock@gmail.com" -N ''
key=$(cat $HOME/.ssh/id_rsa.pub)
keyname=cloud-$(date "+%Y-%m-%d-%H-%M")

# Upload key to github, this will prompt for a password
curl -u "nthnca" --data "{\"title\":\"$keyname\",\"key\":\"$key\"}" https://api.github.com/user/keys

# First time connecting causes prompt, find better way to do this?
git clone git@github.com:nthnca/cloud.git fake
rm -fr fake

# Nothing past this point should require user input.

# Install a few things
cd $HOME
sudo apt-get clean -y
sudo apt-get update -y
sudo apt-get install -y golang-go inotify-tools imagemagick

# Configure git
git config --global user.email "nathanbullock@gmail.com"
git config --global user.name "Nathan Bullock"

# Prepare to install some of my standard repos
mkdir -p github
cd github

# My bash configuration
git clone git@github.com:nthnca/dotbash.git
mv ~/.bashrc ~/oldbashrc
cp dotbash/example.bashrc ~/.bashrc
ln ~/.bashrc ~/.bash_profile

# My vim configuration
git clone --recursive git@github.com:nthnca/dotvim.git
ln -s $PWD/dotvim ~/.vim

# Go HOME
cd $HOME

# setup GOLANG
mkdir -p Library/go go
export GOPATH=$HOME/Library/go:$HOME/go

go get -u github.com/golang/lint/golint
