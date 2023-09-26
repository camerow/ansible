# Mac Setup

This is inispired by the many demos of using ansible to setup up a fresh machine.

## Installation

1. Ensure Apple's command line tools are installed (xcode-select --install to launch the installer).

2. Ensure Homebrew and Ansible Installed:

3. `run.sh`

_Note_: `run.sh` will run _all_ the ansible plays.
If you want to run specific plays see [Run specific plays](#run-specific-plays)

## Run specific plays:

### Install everything:

- `ansible-playbook -i inventory playbook.yml -vv --ask-vault-password --ask-become-pass`

### Install specific things with tags:

- `ansible-playbook -i inventory playbook.yml --tags "node, ssh"`

#### Available tags:

- `ssh`
- `node`
- `zsh`
- `dotfiles`
