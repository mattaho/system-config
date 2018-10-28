[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
