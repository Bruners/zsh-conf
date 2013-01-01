fpath=($HOME/.zsh/func $HOME/.zsh/completions $fpath)
typeset -U fpath


autoload -U zutil
autoload -U compinit
autoload -U complist

## load completion system
skip_global_compinit=1
autoload run-help
autoload run-help-git

## make color constants available
autoload -U colors; colors

## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## load the extract module from oh-my-zsh
autoload +X extract

compinit

for part in $HOME/.zsh/rc.d/??_*; do
    source $part
done

# vim:set ft=zsh:
