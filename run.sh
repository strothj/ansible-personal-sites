#!/bin/bash
ansible-playbook -i hosts/hosts --vault-password-file ~/.vault_pass -u $@ playbooks/sites.yml
