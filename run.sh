#!/bin/bash
ansible-playbook -i hosts --vault-password-file ~/.vault_pass -u $@ site.yml