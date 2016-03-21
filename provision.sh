#!/usr/bin/env bash

# Add a repository of Ansible 1.x
apt-get install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible-1.9
apt-get update

# Install Ansible 1.9
apt-get install -y ansible=1.9.4-1ppa~trusty

# Install Git
apt-get install -y git