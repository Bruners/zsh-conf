typeset -U fpath
fpath=($HOME/.zsh/autofunc $fpath)

# IRC client-like input http://zshwiki.org/home/zle/ircclientlikeinput
autoload down-or-fake-accept-line fake-accept-line
zle -N fake-accept-line
zle -N down-line-or-history down-or-fake-accept-line

# vim:set ft=zsh:
