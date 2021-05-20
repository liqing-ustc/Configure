# The configurations for tools

## Git
```
git clone --recursive <URL-OF-REPOSITORY>
git submodule update --remote --merge
```
File: `~/.gitconfig`
```
[user]
	name = Qing Li
	email = dylan.liqing@gmail.com
[credential]
	helper = cache
[alias]
	br = branch
	co = checkout
	ct = commit
	st = status
```

## SSH
[Connecting to GitHub with SSH](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh) \
[Connecting to servers with SSH](https://www.ssh.com/ssh/copy-id)
```
ssh-keygen
ssh-copy-id user@server
```

## Tmux
File: `~/.tmux.conf`
```
set -g prefix C-a
unbind C-b

#up
bind-key k select-pane -U
#down
bind-key j select-pane -D
#left
bind-key h select-pane -L
#right
bind-key l select-pane -R

bind r source-file ~/.tmux.conf \; display "Reloaded!"

# split window
unbind '"'
bind v splitw -v -c "#{pane_current_path}" # vertical split (prefix v)
unbind %
bind h splitw -h -c "#{pane_current_path}" # horizontal split (prefix h)

set -g mouse on
set-option -g default-shell /bin/bash
```

## Bash
```
alias ll='ls -ahlF'
force_color_prompt=yes
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\$ '
```

## Virtualenvwrapper for Python
```
pip3 install virtualenvwrapper
# add following lines to .bashrc
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source ~/.local/bin/virtualenvwrapper.sh
```

## Create shortcuts
[Keyboard shortcut for “open a terminal here”](https://askubuntu.com/questions/68078/keyboard-shortcut-for-open-a-terminal-here)
1. Create a script called `Terminal` (yes, without a extension) inside the folder `~/.local/share/nautilus/scripts` with the following content:
```
#!/bin/sh
gnome-terminal
```

2. Make it executable, then close any Nautilus instance:
```
$ chmod +x Terminal
$ nautilus -q
```

3. Create (or edit) the `~/.config/nautilus/scripts-accels` file adding these lines:
```
F4 Terminal
; Commented lines must have a space after the semicolon
; Examples of other key combinations:
; <Control>F4 Terminal
; <Alt>F4 Terminal
; <Shift>F12 Terminal
```

4. Test it! Open Nautilus, right click, and choose Scripts > Terminal. Or, use the keyboard shortcut that you've just configured :) Note: Tested on Ubuntu 18.04, 20.04.

## Install python on Ubuntu 20.04
[Install Python 3.5, 3.6 and 3.7 on Ubuntu 20.04](http://lavatechtechnology.com/post/install-python-35-36-and-37-on-ubuntu-2004/)

## Install Jupyter lab and kernels
[Installing the Jupyter Software](https://jupyter.org/install), [Installing the IPython kernel](https://ipython.readthedocs.io/en/stable/install/kernel_install.html)
```
pip install jupyterlab
workon xxx
pip install ipykernel
python -m ipykernel install --user --name myenv
```
```
jupyter kernelspec list
jupyter kernelspec uninstall [kernel-to-remove]
```
