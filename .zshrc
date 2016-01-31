# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit promptinit
compinit
promptinit

# This will set the default prompt to the adam2 theme
prompt adam2 white green white white

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

# aliases go here
alias ls='ls -GFh'
alias ll='ls -GFhla'
alias la='ls -GFha'
alias java_home='/usr/libexec/java_home'
