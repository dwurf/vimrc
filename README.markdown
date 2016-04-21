Using this repository
---------------------

On *nix:

        cd $HOME
        git clone https://github.com/dwurf/vimrc.git .vimrc
        mv .vimrc .vimrc.bak
        ln -s .vim/vimrc .vimrc
        cd .vimrc
        git submodule init
        git submodule update

On Windows

1. Check out the repository to `%HOMEDRIVE%%HOMEPATH%\vimfiles`
1. Put the following in `%HOMEDRIVE%%HOMEPATH%\_vimrc`:

    source ~/vimfiles/vimrc
1. Run `git submodule init`, followed by `git submodule update`

