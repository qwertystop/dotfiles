# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Cargo, for... Rust, I think
export PATH="$HOME/.cargo/bin:$PATH"

# ssh agent
eval `ssh-agent` 2>&1 >/dev/null


. "$HOME/torch/install/bin/torch-activate"

. "$HOME/torch-cl/install/bin/torch-activate"

# CS-Script
export CSSCRIPT_DIR=/usr/share/CS-Script
export PATH=$PATH:$CSSCRIPT_DIR
