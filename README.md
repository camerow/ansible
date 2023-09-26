# Mac Setup

This is inispired by the many demos of using ansible to setup up a fresh machine. 

## Installation
1. Ensure Apple's command line tools are installed (xcode-select --install to launch the installer).

2. Ensure Homebrew and Ansible Installed: 
  - `run.sh` 
  Note: `run.sh` will run _all_ the ansible plays. If you want to run specific plays see #run-specific-plays

## Run specific plays:
  Everything:
    - `ansible-playbook -i inventory playbook.yml -vv --ask-vault-password --ask-become-pass`
  Specific things with tags:
    - `ansible-playbook -i inventory playbook.yml --tags "node, ssh"`
    - Available tags: 
      - `ssh`
      - `node` 
      - `javascript` 
      - `zsh` 
      - `dotfiles`
