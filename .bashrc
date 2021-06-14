#!/bin/bash
#    _           _
#   | |_ ___ ___| |_ ___ ___
#  _| . | .'|_ -|   |  _|  _|
# |_|___|__,|___|_|_|_| |___|

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="[\T] - \W> "

export ANSIBLE_NOCOWS=1
export BASH_SILENCE_DEPRECATION_WARNING=1
export OPENSOURCE_HOME=/home/srang/code/opensource
export MYVIMRC=/home/srang/.vimrc
export MYTMUXRC=/home/srang/.tmux.conf
export MYBASHRC=/home/srang/.bashrc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### RVM
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source "$HOME/.rvm/scripts/rvm"

### JAVA
# source /opt/rh/rh-maven35/enable

### GO
#export PATH=$PATH:$GOPATH/bin

### Local scripts
export PATH="$PATH:$HOME/.bin"

### Minishift/kube
# export MINIKUBE_IN_STYLE=false
# source ~/.minishift_usage
# export MINISHIFT_ENABLE_EXPERIMENTAL=y
# export MINISHIFT_FLAGS='--extra-clusterup-flags="--enable=*,service-catalog,template-service-broker,automation-service-broker"'

# eval "$(direnv hook bash)"
export EDITOR=$(which vim)
thoughts | cowsay
