#!/bin/bash

script_dir=$(dirname $(readlink -f $0))

${script_dir}/install-ansible.sh || exit 1

if [ -e .vault_pass ]; then
  ansible-playbook -t core,dotfiles --vault-password-file .vault_pass boot.yml
else
  ansible-playbook -t core,dotfiles,python_asr boot.yml
fi
