fpath=(${HOME}/.zsh/func ${HOME}/.zsh/completions ${fpath})

# Dir Colors
if which dircolors >/dev/null 2>&1;
then
    eval `dircolors -b ~/.zsh/dircolors`
    export LS_COLORS
fi

typeset -aU _compdir
_compdir=(${HOME}/.zsh/completions)

# Load settings not already loaded from zshenv
source ${HOME}/.zsh/rc.d/01_${HOST}_profile

zmodload -i zsh/complist
autoload -Uz zutil
autoload -Uz colors && colors
autoload -Uz add-zsh-hook
autoload -Uz promptinit && promptinit
autoload -U terminal-status && terminal-status
autoload -Uz compinit
compinit

# import more settings
for part in ${HOME}/.zsh/rc.d/??_all_*;
do
    source ${part}
done

zstyle :compinstall filename '/home/lasseb/.zshrc'

source ${HOME}/.zsh/rc.d/81_${HOST}_aliases

autoload -Uz url-quote-magic
autoload -U extract
autoload -U mod_params
autoload -U xprop_info

zle -N copy-prev-shell-word copy-earlier-word
zle -N add-zsh-hook
zle -N terminal-status
zle -N self-inserts url-quite-magic
zle -N extract

prompt wunjo

# End of lines added by compinstall

# vim:set ft=zsh:
