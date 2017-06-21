# .bashrc
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias next='cmus-remote -n'
alias pause='cmus-remote -u'
alias vim='/usr/local/bin/vim'
alias genfare='cd /home/srang/workspace/SPX/genfarecloud'
alias tourney='cd /home/srang/program/Website/tourney-1.5.3.7/'
alias gitclean='git fetch -p && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias dbclean="cd /home/srang/workspace/SPX/genfarecloud/support && mvn flyway:clean -Dflyway.schemas='cdta,test' && mvn flyway:baseline -Dflyway.schemas='cdta' && mvn flyway:baseline -Dflyway.schemas='test' && mvn clean install && mvn mongo-migrate:clean && mvn mongo-migrate:migrate ; cd .."
#alias dbclean="cd /home/srang/workspace/SPX/genfarecloud/support && mvn flyway:clean -Dflyway.schemas='cdta,test' && mvn clean install && mvn mongo-migrate:clean && mvn mongo-migrate:migrate ; cd .."
alias deploytourney='cp -r /home/srang/program/Website/tourney-1.5.3.7/* /var/www/html/tourney/'
export EDITOR='/usr/local/bin/vim'
export TZ='America/Chicago'
export AWS_DEFAULT_REGION='us-east-1'
export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOPATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
