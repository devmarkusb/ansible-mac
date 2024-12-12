#!/usr/bin/env bash

if ! (pip >/dev/null && pip -V) ; then
  python3 -m venv ~/venv
  echo "Not in a virtual environment. Exiting."
  exit 1
fi

xcode-select --install

set -e

python3 -m pip install --upgrade pip
python3 -m pip install ansible
# use --force to upgrade
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -K --check --diff
