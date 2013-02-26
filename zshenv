typeset -U path
typeset -U fpath
path=($HOME/.bin $path)
fpath=($HOME/.zsh/autofunc $fpath)

# IRC client-like input http://zshwiki.org/home/zle/ircclientlikeinput
autoload down-or-fake-accept-line fake-accept-line
zle -N fake-accept-line
zle -N down-line-or-history down-or-fake-accept-line


typeset -U EDITOR
EDITOR='/usr/bin/vim'
typeset -U PAGER
PAGER='/usr/bin/vimpager'
typeset -U MANPAGER
MANPAGER='/usr/bin/vimmanpager'

export EDITOR PAGER MANPAGER

# vim:set ft=zsh:
