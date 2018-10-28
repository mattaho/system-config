source ~/.bashrc

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# Start ssh agent to avoid retyping keys.
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
  echo "Initialising new SSH agent..."
  if [ -f /usr/local/bin/ssh-agent ]
  then
    /usr/local/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  else
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  fi
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
  #ps ${SSH_AGENT_PID} doesn't work under cywgin
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_agent;
  }
else
     start_agent;
fi


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Load in the git branch prompt script.
source ~/.git-prompt.sh

PS1="\[\033[34m\]\t\[\033[32m\]\$(__git_ps1) \[\033[0m\]\[\033[1;36m\]\w\[\033[32m\] \u$ \[\033[0m\]"

export EDITOR=vim
export BUNDLER_EDITOR=atom
