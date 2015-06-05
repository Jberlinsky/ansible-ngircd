ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook site.yml -i production --private-key ~/.ssh/<YOUR KEY>.pem -u ubuntu -v "$@"
