# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.

# Set the language  env. variables to english for this session
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Configure auto completion
autoload -U compinit 
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Enable command-not-found support, if it exists
if [[ -x /usr/lib/command-not-found ]] ; then
        function command_not_found_handler() {
                /usr/lib/command-not-found --no-failure-msg -- $1
        }
fi

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# Configure the prompt sytle
autoload -U promptinit
promptinit
# This will set the default prompt to the adam2 theme
prompt adam2 white green white white

# Make the color of the cursor green, when you are in an interactive shell
if [[ $- == *i* ]]; then
       	echo -ne "\e]12;#4E9A06\a" 
fi

# Enable vi key bindings
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


# aliases diverged by OS
case "$OSTYPE" in
	darwin*)
	       	alias ls='ls -GFh';
	       	alias la='ls -GFha';
	       	alias ll='ls -GFhla';
	       	alias java_home='/usr/libexec/java_home';
		alias v='vim';;
	linux*)
		alias ls='ls --color=auto -Fh';
		alias la='ls --color=auto -Fha';
		alias ll='ls --color=auto -Fhla';
		alias v='vim';;
	*)
		;;
esac
