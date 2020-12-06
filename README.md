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
source ~/.local/bin/virtualenvwrapper.sh
```
