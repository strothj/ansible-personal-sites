#!/bin/bash
ansible "$@" -u root --vault-password-file=~/.vault_pass -i hosts -m raw -a "apt-get update && apt-get install -qy python"