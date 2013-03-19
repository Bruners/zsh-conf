fpath=($HOME/.zsh/func $fpath)

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

# Dir Colors
if which dircolors >/dev/null 2>&1;
then
    eval `dircolors -b ~/.dircolors`
    export LS_COLORS
fi

# Load settings not already loaded from zshenv
for part in $HOME/.zsh/rc.d/??_*;
do
   source $part
done

# vim:set ft=zsh:
