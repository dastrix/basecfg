#
#source .bash_git
#export PS1='\[\033[01;32m\]\u@`/bin/hostname -f`\[\033[01;34m\] \w $(__git_ps1 "(%s)") \$\[\033[00m\] '

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
alias gpl='git pull --ff-only'
alias gfpl='git fetch && gpl'
alias glg='git log --color -g -p -c '

alias du1='du -h --max-depth=1 | sort -hr '

# вывод текущей ветки в приглашении bash
# http://stackoverflow.com/questions/12870928/mac-bash-git-ps1-command-not-found
#curl -o ~/.git-prompt.sh \
#    https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='[\W]$(__git_ps1 "(%s)"): '
fi

#Git Autocompletion in OS X Terminal
#https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
if [ ! -f ~/git-completion.bash ]; then
    curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o'git-completion.bash'
fi

if [ -f ~/git-completion.bash ]; then
  source ~/git-completion.bash
fi

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# MacPorts Installer addition on 2013-04-05_at_17:21:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias getbrcs="grep issue_ | sed 's/.*\(issue_[a-zA-Z0-9]\{1,99\}-[0-9a-zA-Z_-]\{1,99\}\).*/\1/' | sort -u"
