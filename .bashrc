#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[0;36m\]\u \[\e[0;35m\]\h \[\e[0m\]\W \]\e[0;35m\]>.< \[\e[0m\]'

if [ -f ~/.config/.bash_aliases ]; then
	. ~/.config/.bash_aliases
fi

if [ -f ~/.config/.bash_vars ]; then
	. ~/.config/.bash_vars
fi

export PATH="$HOME/bin:$PATH"


[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
