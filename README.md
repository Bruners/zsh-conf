## zsh-conf

The most usefull things are cherrypicked from different zsh configurations
* _dhcpcd completion from ::: http://github.com/zsh-users)
* extract and systemd functions from ::: https://github.com/robbyrussell/oh-my-zsh)
* zgitinit and wunjo prompt from ::: https://github.com/jcorbin/zsh-git)
* colors from ::: (https://github.com/altercation/solarized)
* Rest from various zsh configurations found on github with some self additions

If you feel left out of the list please give me a shout

## Files and how i use them

I keep my files in githhub/zsh-conf and simply make symlinks in my home folder eg:

```bash
ln -s ~/github/zsh-conf/zshrc ~/.zshrc
ln -s ~/github/zsh-conf/zlogin ~/.zlogin
ln -s ~/github/zsh-conf/zprofile ~/.zprofile
ln -s ~/github/zsh-conf/zsh ~/.zsh
ln -s ~/github/zsh-conf/dircolors ~/.dircolors
```

* dircolors - directory colors adapted from solarized
* zlogin - launches keychain with my ssh keys
* zprofile - does nothing but can run startx on zsh login
* zshrc - the main configuration file where *everything* in .zsh/ gets loaded
* zsh/ - folder containing all the different modules and settings i want

## Donations

Bitcoin
* 14Daior4aJ4kp3tHRQWTxdjM2pZmE2uJxL

## Licence

Everything except functions and scripts from other sources is to be considered
distributed under the terms of the GNU General Public License v2
