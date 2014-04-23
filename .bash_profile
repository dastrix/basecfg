# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias df='df -h'
alias grep='grep --color'
alias __grep='grep -ri --color'
alias ..='cd ..'
alias la='ls -la'

alias ggrep='git grep --color '
alias gg='ggrep '
alias gdiff='git diff '
alias gdi='git diff '
alias gst='git status '
alias gci='git commit '
alias gch='git checkout '

alias du1='du -h --max-depth=1 | sort -hr '

# вывод текущей ветки в приглашении bash
# http://stackoverflow.com/questions/12870928/mac-bash-git-ps1-command-not-found
#curl -o ~/.git-prompt.sh \
#    https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='[\W]$(__git_ps1 "(%s)"): '
fi

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# MacPorts Installer addition on 2013-04-05_at_17:21:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

