fpath=($HOME/.zsh/func $fpath)
path=($HOME/.bin $path)

autoload -U zutil
autoload -U compinit
autoload -U complist
autoload -U promptinit

autoload -U add-zsh-hook
autoload -U terminal-status && terminal-status

autoload -U colors && colors
autoload -U url-quote-magic

compinit

promptinit
prompt wunjo

autoload -U extract
autoload -U mod_params
autoload -U xprop_info

zle -N url-quite-magic
zle -N extract
zle -N terminal-status

# Load settings not already loaded from zshenv
for part in $HOME/.zsh/rc.d/??_*;
do
   source $part
done

# vim:set ft=zsh:
