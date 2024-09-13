#!/usr/bin/env bash

xcode-select --install
python3 -m pip install --upgrade pip
python3 -m pip install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -K
