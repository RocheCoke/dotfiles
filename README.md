# Antons dotfiles

setup.sh will symlink files from home folder to dotfiles in this repo, if they are in ~/dotfiles.

macos.macos needs to be sourced separately.

Neovim is assumed and alias `vim=nvim` is set.

prezto is assumed, but will use the submodule of this directory in the future.

there are some nice gitconfig aliases

## Updating things

Prezto: 

git pull --rebase 
(or more secure interactive merge version)

brew outdated
brew upgrade --all


pip list --outdated
pip install --upgrade pip

## Reinstall brew

From [http://zanshin.net/2012/07/31/uninstalling-brew-to-re-install-brew/].

````$ cd `brew --prefix`
$ rm -rf Cellar
$ brew prune
$ rm -rf Library .git .gitignore bin/brew README.md share/man/man1/brew
$ rm -rf ~/Library/Caches/Homebrew
````

## Todo
- Install Vundle
- Config fzf (see eleijonmarck)
- See if I missed any important vim config
- Create ctags for entire python installation?
