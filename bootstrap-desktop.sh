#!/usr/bin/env bash

# If you have a protected environment, just activate a venv upfront (first command only needed once):
# $ python3 -m venv ~/venv
# $ . ~/venv/bin/activate

xcode-select --install
python3 -m pip install --upgrade pip
python3 -m pip install ansible
# use --force to upgrade
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -K
