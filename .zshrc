#source /usr/local/bin/git-prompt
#PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
# zsh plugin config

source /home/srang/Open/antigen/antigen.zsh
export PATH='/home/srang/.composer/vendor/bin':$PATH
export OPENSHIFT_DATA_DIR='/home/srang/Program/pystatose/reports/'
export OPEN_SOURCE_HOME='/home/srang/Open'
eval $(thefuck --alias)
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle chrissicool/zsh-256color
antigen bundle kennethreitz/autoenv
antigen bundle zsh-users/zsh-history-substring-search
antigen apply

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
source '/home/srang/.zshalias'
eval "$(direnv hook zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

today=$(date "+%a %m/%d %k:%M%P")
showerthoughts=$(thoughts)

cowput="$showerthoughts \n $today"
echo $cowput | cowsay

