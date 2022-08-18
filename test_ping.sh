#!/bin/bash

ansible win2022 -m win_ping -i hosts --vault-password-file /keybase/private/revoman/ansible/vault_password_file.sh
