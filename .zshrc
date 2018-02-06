# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

# Set the language  env. variables to english for this session
export LANG=en_GB.UTF-8
export LANGUAGE=en_GB.UTF-8

autoload -U compinit promptinit
compinit
promptinit

# Enable vi key bindings
bindkey -v

# This will set the default prompt to the adam2 theme
prompt adam2 white green white white

# Make the color of the cursor green, when you are in an interactive shell
if [[ $- == *i* ]]; then
       	echo -ne "\e]12;#4E9A06\a" 
fi

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# aliases diverged by OS
case "$OSTYPE" in
	darwin*)
	       	alias ls='ls -GFh';
	       	alias la='ls -GFha';
	       	alias ll='ls -GFhla';
	       	alias java_home='/usr/libexec/java_home';;
	linux*)
		alias ls='ls --color=auto -Fh';
		alias la='ls --color=auto -Fha';
		alias ll='ls --color=auto -Fhla';;
	*)
		;;
esac
