#!/bin/bash

echo "Checking Homebrew Installation"
which brew

if [ $? -eq 0 ]; then
	echo "Homebrew found, running playbook!"
else
	echo "Installing Homebrew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Checking Ansible Installation"
which ansible

if [ $? -eq 0 ]; then
	echo "Ansible found!"
else
	echo "Installing Ansible"
	brew install ansible
fi

ansible-playbook -i inventory playbook.yml -vv --ask-vault-password
