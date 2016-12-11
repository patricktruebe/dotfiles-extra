# .files

These are my dotfiles. Take anything you want, but at your own risk.

This integrates with and enhances patricktruebe/dotfiles

## Package overview

@see [patricktruebe/dotfiles](https://github.com/patricktruebe/dotfiles)

## Install

On a sparkling fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

Install the dotfiles with either Git or curl:

### Clone with Git

    git clone https://github.com/patricktruebe/dotfiles.git ~/.dotfiles
    git clone https://github.com/patricktruebe/extra.git ~/.extra       # Optional, see below
    source ~/.dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:

    sh -c "`curl -fsSL https://raw.github.com/patricktruebe/dotfiles/master/remote-install.sh`"

Or, using wget:

    sh -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/patricktruebe/dotfiles/master/remote-install.sh`"

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       help             This help message
       edit             Open dotfiles in editor ($EDITOR_ALT) and Git GUI ($GIT_GUI)
       reload           Reload dotfiles
       test             Run tests
       update           Update packages and pkg managers (OS, brew, npm, gem, pip)
       clean            Clean up caches (brew, npm, gem, rvm)
       macos            MacOS system defaults
       dock             Apply MacOS Dock settings
       install vundle   Install Vundle
