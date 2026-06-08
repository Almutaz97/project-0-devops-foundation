# SSH Foundation

## Goal

Understand how SSH is used in DevOps workflows for secure authentication and remote access.

## What SSH Is

SSH means Secure Shell. It is a protocol used to securely connect to remote systems and services.

In DevOps, SSH is commonly used for:

- connecting to Linux servers
- authenticating to GitHub
- copying files securely
- managing infrastructure
- accessing cloud or VPS machines

## SSH Key Pair

SSH usually uses a key pair:

- private key
- public key

The private key stays on the local machine.

The public key is shared with the remote system, for example GitHub or a server.

## Private Key

Example:

/home/ubuntu/.ssh/id_ed25519

The private key must never be shared, committed, or copied into public places.

## Public Key

Example:

/home/ubuntu/.ssh/id_ed25519.pub

The public key can be added to GitHub or to a server authorized_keys file.

## GitHub SSH Authentication

This command verifies GitHub SSH access:

ssh -T git@github.com

A successful result means the local SSH key is accepted by GitHub.

## Git Remote over SSH

A GitHub remote using SSH looks like this:

git@github.com:Almutaz97/project-0-devops-foundation.git

This is different from HTTPS:

https://github.com/Almutaz97/project-0-devops-foundation.git

The two formats must not be mixed.

## known_hosts

The known_hosts file stores fingerprints of remote servers that this machine has connected to before.

Example:

/home/ubuntu/.ssh/known_hosts

It helps detect if a remote server identity unexpectedly changes.

## Current Project Result

This VM can authenticate to GitHub through SSH, and the project repository uses an SSH remote.
