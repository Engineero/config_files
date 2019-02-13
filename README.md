# Configuration Files
Configuration files, like bashrc, vimrc, and fish functions, although currently
no fish functions.

---
## Script install
Simply run `./install.sh` from within the cloned directory to automatically
copy files/folders into your home directory. Note that you may need to update
permissions for this file to allow execution. To do so, run the following from
within the project directory:

    $ chmod u+x install.sh

---
## Manual install

To manually install, just copy these files into the appropriate places:

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
