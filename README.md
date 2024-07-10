# Mac Setup

This is inispired by the many demos of using ansible to setup up a fresh machine.

## Installation

Ensure Apple's command line tools are installed (xcode-select --install to launch the installer).

`run.sh` to install deps and run everything
_Note_: `run.sh` will run _all_ the ansible plays.

OR

Ensure Homebrew and Ansible Installed:

- <https://brew.sh/>
- brew install ansible

Run specific plays, see [Run specific plays](#run-specific-plays)

## Run specific plays

### Install everything

- `ansible-playbook -i inventory playbook.yml -vv --ask-vault-password --ask-become-pass`

### Install specific things with tags

- `ansible-playbook -i inventory playbook.yml --tags "node, ssh"`

#### Available tags

- `ssh`
- `node`
- `zsh`
- `dotfiles`
