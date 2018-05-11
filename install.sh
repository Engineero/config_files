export TEST_DIR = $HOME/test
mkdir -p -- "$TEST_DIR/.vim"
mkdir -p -- "$TEST_DIR/.vim-tmp"
cp .bashrc "$TEST_DIR/.bashrc"
cp .bash_aliases "$TEST_DIR/.bash_aliases"
cp .vimrc "$TEST_DIR/.vimrc"
cp -R templates "$TEST_DIR/.vim/"
