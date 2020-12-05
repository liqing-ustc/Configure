# The configurations for tools

## SSH
[Connecting to GitHub with SSH](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh) \
[Connecting to servers with SSH](https://www.ssh.com/ssh/copy-id)
```
ssh-keygen
ssh-copy-id user@server
```

## Tmux
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
