# Load environment settings from profile.env, which is created by
# # env-update from the files in /etc/env.d
if [ -e /etc/profile.env ] ; then
    . /etc/profile.env
fi

typeset -aU path cdpath fpath manpath
fpath=($HOME/.zsh/autofunc $fpath)

# IRC client-like input http://zshwiki.org/home/zle/ircclientlikeinput
autoload down-or-fake-accept-line fake-accept-line
zle -N fake-accept-line
zle -N down-line-or-history down-or-fake-accept-line

# vim:set ft=zsh:
