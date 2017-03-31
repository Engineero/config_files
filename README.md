# config_files
Configuration files, like bashrc, vimrc, and fish functions.

Basically just copy these files into the appropriate places:

* ~/.bashrc
* ~/.bash_aliases
* ~/.vimrc
* ~/.vim/templates/

Also create a backup directory if one does not exist already for vim:

    mkdir ~/.vim-tmp/

Note that the templates directory should be located in ~/.vim/ for the existing
autocommands and loading of new file templates to work correctly. Also, the
autocommands assume that the $USERNAME environment variable is set to the author
of the new file.
