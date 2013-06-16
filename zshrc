fpath=($fpath $HOME/.zsh/func $HOME/.zsh/completions)

autoload -U zutil
autoload -U compinit

autoload -U complist
autoload -U promptinit

autoload -U add-zsh-hook
autoload -U terminal-status && terminal-status

autoload -U colors && colors
autoload -Uz url-quote-magic

compinit -u

promptinit
prompt wunjo

autoload -U extract
autoload -U mod_params
autoload -U xprop_info

zle -N self-inserts url-quite-magic
zle -N extract
zle -N terminal-status

# Dir Colors
if which dircolors >/dev/null 2>&1;
then
    eval `dircolors -b ~/.zsh/dircolors`
    export LS_COLORS
fi

# Load settings not already loaded from zshenv
source ${HOME}/.zsh/rc.d/01_${HOST}_profile
for part in ${HOME}/.zsh/rc.d/??_all_*;
do
    source $part
done
source ${HOME}/.zsh/rc.d/81_${HOST}_aliases

cdpath=(~ ~/exherbo ${DEV_DIR})

typeset -aU path

# vim:set ft=zsh:
