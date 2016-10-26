alias ls='ls -G'
alias dirs='dirs -v'
alias ll='ls -l'
alias la='ls -a'
alias lal='ls -la'
alias rm='rm -i'
alias logdog='git log --decorate --oneline --graph'
alias goo="~/dev/platform/goo"
alias creds="~/dev/feria/bin/feria cmsFronts --access s3-read; ~/dev/feria/bin/feria frontend"

# colourify ls
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export CLICOLOR=1
export LSCOLORS=CaeaxxxxBxxxxxxxxxCaCa

export PAGER=less
export HISTFILESIZE=5000          # Store 5000 commands in history
export HISTCONTROL=ignoredups:ignorespace    # Don't put duplicate lines in the history.

# Exports
export EDITOR=vim

export PS1="[\[\e[0;31m\]\u\[\e[m\]@\[\e[0;35m\]\h \[\e[1;32m\]\w\[\e[m\]]> "

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh

# User variables
codegrep() {
    if [[ $# -eq 0 ]]
    then
        echo "Usage: codegrep <pattern> "
    else
        grep -nT --colour \
            --exclude=tags \
            --exclude=*.o \
            --exclude=*.so \
            --exclude=*.tsk \
            --exclude=*.d \
            --exclude=*.dd \
            "$1" *
    fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
