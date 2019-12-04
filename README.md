# Dotfiles

Useful dotfiles for zsh, ssh, and git that I use on Mac OS X

The `dotfiles/` directory contains all the dotfiles themselves, while the
`setup/` directory has shell scripts for setting up a new Mac OS X install. The
goal of these dotfiles is to provide useful shortcuts and helpers while being
lighter less magic than a framework like oh-my-zsh.

## Installing Dotfiles

Running the `$ source setup.sh` will use `stow` utility to install the
contents of the `dotfiles/` directory by symlinking them into the appropriate
spot in the user directory. It can also be rerun at anytime to symlink any new
dotfiles.

## Setting up a new Mac from scratch

To setup a new Mac from scratch, run `$ source setup.up --all` which will
install Homebrew (if necessary), as well as any useful utilities or Mac
applications that may be missing.

Note that this `setup.sh` only handles some basic initial setup, and most new
machines will need the following additional installation steps.

**Additional Python Setup**
- Install any desired Python versions with `pyenv`
- Install `pip`
- Install `pipx`
- Install `poetry` with `pipx`

**Additional setup for GitHub**
- Create SSH keys and [add them to GitHub](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). These keys should appear in `dotfiles/.ssh`
where they will be gitignored
- Create new GPG keys and [add them to GitHub](https://help.github.com/en/github/authenticating-to-github/managing-commit-signature-verification).
- Create a new file with 

        [user]
            signingkey={public GPG key}

    in a file named `dotfiles/.gitconf/local` (it will be gitignored)

## My Python Setup

I use `pyenv` to manage multiple versions of Python, with the latest Python
version set as the default. I use `pipx` to install global standalone Python
command lines tools such as `poetry` or `black`. `poetry` is my preferred
dependency management solution, because unlike `pip` by itself, `poetry` allows
for a clean separation between application dependencies and package
dependencies. 

A sample of how I setup new Python projects can be seen in the `pynew` function
declared in `dotfiles/.zsh/02-aliases.zsh`
