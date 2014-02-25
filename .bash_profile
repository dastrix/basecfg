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

alias du1='du -h --max-depth=1 | sort -hr '

# вывод текущей ветки в приглашении bash
# https://wiki..com/display/SOFTDEV/GIT+workflow#GITworkflow-Началоработы
source .bash_git
export PS1='\[\033[01;32m\]\u@`/bin/hostname -f`\[\033[01;34m\] \w $(__git_ps1 "(%s)") \$\[\033[00m\] '


export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# MacPorts Installer addition on 2013-04-05_at_17:21:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

