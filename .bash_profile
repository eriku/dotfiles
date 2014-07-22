# start the ssh-agent
function start_agent {
  echo "Initializing new SSH agent..."
  ssh-add
}

# test for identities
function test_identities {
  # test whether standard identities have been added to the agent already
  ssh-add -l | grep "The agent has no identities" > /dev/null
  if [ $? -eq 0 ]; then
    ssh-add
    # $SSH_AUTH_SOCK broken so we start a new proper agent
    if [ $? -eq 2 ];then
      start_agent
    fi
  fi
}

# check for running ssh-agent with proper $SSH_AGENT_PID
if [ -n "$SSH_AGENT_PID" ]; then
  ps -ef | grep "$SSH_AGENT_PID" | grep ssh-agent > /dev/null
  if [ $? -eq 0 ]; then
    test_identities
  fi

# if $SSH_AGENT_PID is not properly set, we might be able to load one from
$SSH_ENV
else
  if [ -f "$SSH_ENV" ]; then
    . "$SSH_ENV" > /dev/null
  fi
  ps -ef | grep "$SSH_AGENT_PID" | grep -v grep | grep ssh-agent > /dev/null
  if [ $? -eq 0 ]; then
    test_identities
  else
    start_agent
  fi
fi

# ------------------------------

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=/usr/local/bin:$PATH:~/bin

export PATH=/usr/local/sbin:$PATH:~/bin

export PATH="/usr/local/mysql/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH=$PATH:/opt/local/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info

export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"

# ------------------------------

source ~/.bash_aliases
source ~/.bash_aliases_emu
source ~/.bash_aliases_d7
source ~/.bash_aliases_veratta

source ~/.bash_functions

source ~/.git-completion.bash
source ~/.git-prompt.sh

# ------------------------------

# Set COLORS
 export CLICOLOR=1
 export LSCOLORS=GxFxCxDxBxegedabagaced

# Example
# PS1='[\u@\h \W]\$ '
# PS1='\[\e[1;32m\]   [\u@\h \W]\$   \[\e[0m\] '

# Original Prompt
# PS1='\h:\W \u\$ '

# Original with git branch
# PS1='\h:\W \u $(__git_ps1 "(%s)")\$ '

# \[\e[1;32m\]
# \[\e[0m\]

# Colored
PS1='\[\e[1;33m\]\h:\[\e[0m\]\[\e[1;32m\]$(last_two_dirs)\[\e[0m\]\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[0m\]\$ '

##
# Your previous /Users/erik/.bash_profile file was backed up as /Users/erik/.bash_profile.macports-saved_2014-04-29_at_15:06:21
##

# MacPorts Installer addition on 2014-04-29_at_15:06:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/erik/.bash_profile file was backed up as /Users/erik/.bash_profile.macports-saved_2014-04-29_at_15:13:37
##

# MacPorts Installer addition on 2014-04-29_at_15:13:37: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

