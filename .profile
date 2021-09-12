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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# IntelliJ
if [ -d "$HOME/.local/bin/idea/bin" ] ; then
    PATH="$HOME/.local/bin/idea/bin:$PATH"
fi

# GoLand
if [ -d "$HOME/.local/bin/Goland/bin" ] ; then
    PATH="$HOME/.local/bin/Goland/bin:$PATH"
fi

# Go
if [ -d "$HOME/.local/bin/go" ] ; then
    export GOROOT=$HOME/.local/bin/go
    export GOPATH=$HOME
    PATH="$HOME/.local/bin/go/bin:$PATH"
fi
