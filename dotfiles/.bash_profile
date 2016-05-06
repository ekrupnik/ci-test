# use colors in terminal
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias ll="ls -Alh"
alias finder="open -a Finder ./"

# git
alias pull="git pull upstream;git pull upstream master"
alias push="git push origin master"

# directory switching
alias cddevops="cd ~/development/workspaces/devops"
alias cdworkspace="cd ~/development/workspaces"

# ssh-ing

# git autocomplete commands
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# GitHub integration
# https://conra.dk/2013/01/18/git-on-osx.html
eval "$(hub alias -s)"

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="\u@\h \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\w\[\033[32m\]\$( parse_git_branch )\[\033[00m\] $ "
export PS1="\[\033[33m\]\w\[\033[m\]\[\033[96m\]\$( parse_git_branch )\[\033[00m\] $ "


# MacPorts Installer addition on 2016-04-26_at_15:32:20: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"


# virtualenv
export WORKON_HOME=~/virtualenvs
#source /usr/local/bin/virtualenvwrapper.shexport PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
