dotfiles
========

This is a repository containing all the .\*rc files in a user's home directory (.zshrc, .vimrc, and so on).

Files are managed by the [rcm](http://thoughtbot.github.io/rcm/rcm.7.html) utility.

This repository includes [git](http://git-scm.com/) submodules. When cloning to a new machine, the submodules need to be initialized.

    $ git submodule update --init

Every submodule can be updated to the latest available version at once:

    $ git submodule foreach git pull origin master
