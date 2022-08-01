#!/bin/bash

script_dir=$(dirname $(readlink -f $0))

${script_dir}/install-ansible.sh || exit 1

ansible-playbook -t core,core_g,cuda,dotfiles,python_asr,docker --vault-password-file .vault_pass boot.yml
