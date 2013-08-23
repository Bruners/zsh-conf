fpath=(${HOME}/.zsh/func ${HOME}/.zsh/completions ${fpath})
autoload -U ~/.zsh/func/*(:t)

# Dir Colors
if which dircolors >/dev/null 2>&1;
then
    eval `dircolors -b ~/.zsh/dircolors`
    export LS_COLORS
fi

typeset -aU _compdir
_compdir=(${HOME}/.zsh/completions)

# Load settings not already loaded from zshenv
. ${HOME}/.zsh/rc.d/01_${HOST}_profile

zmodload -i zsh/complist
autoload -Uz zutil
autoload -Uz colors
colors

autoload -Uz url-quote-magic && {
    zle -N self-insert url-quote-magic
}

autoload -Uz copy-earlier-word
zle -N copy-prev-shell-word copy-earlier-word

# import more settings
for part in ${HOME}/.zsh/rc.d/??_all_*;
do
    . ${part}
done

autoload -Uz promptinit
promptinit

autoload -Uz compinit
compinit

zstyle :compinstall filename '/home/lasseb/.zshrc'

. ${HOME}/.zsh/rc.d/81_${HOST}_aliases

shopts=$-
setopt nullglob
for sh in /etc/profile.d/*.sh ; do
    [ -r "$sh" ] && . "$sh"
done
unsetopt nullglob
set -$shopts
unset sh shopts

prompt wunjo

# End of lines added by compinstall

# vim:set ft=zsh:
