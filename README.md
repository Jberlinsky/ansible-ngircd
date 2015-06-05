# IRC

Deploys an SSL-secured IRC server

## Setup

1. Run `./setup.sh`.
2. Spin up an Ubuntu-based instance in EC2. Take a note of its IP address (internal or external depending on your network/VPC config).

## Deploying

1. Edit `production` to point to the correct host.
2. Edit `run.sh` to point to the correct EC2 keypair.
3. Edit `host_vars/ircd`. See `roles/ansible-role-ngircd` for a description of each variable.
3. Run `./run.sh`.
