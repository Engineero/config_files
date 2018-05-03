" Colors {{{
colorscheme desert  " one of my favs, also try badwolf some time
syntax enable  " enable syntax highlighting
" }}}

" Spaces and tabs {{{
set shiftwidth=2  " controls auto-indenting step
set tabstop=2  " number of visual spaces per tab
set softtabstop=2  " number of spaces in tab when editing
set expandtab  " tabs are spaces
set backspace=indent,eol,start  " allows normal backspace behavior
" }}}

" UI config {{{
set number  " show line numbers
set showcmd  " show command in bottom bar
"set cursorline  " highlight current line
filetype plugin indent on  " load filetype-specific indent files
set wildmenu  " visual autocomplete for command menu
set lazyredraw  " redraw only when we need to
set showmatch  " highlight matching [{()}]
set viewoptions-=options
" }}}

" Searching {{{
set incsearch  " search as characters are entered
set hlsearch  " highlight matches
" }}}

" Folding {{{
set foldenable  " enable folding
set foldlevelstart=10  " open most folds by default
set foldnestmax=10  " max 10 nested folds

" Space opens/closes folds.
nnoremap <space> za
nnoremap <S-Space> zA  " open/close all folds below cursor, only works on gvim

" Fold method can be set to marker, manual, expr, syntax, diff, or indent.
" Run :help foldmethod to find out more.
set foldmethod=indent  " fold based on indent level
" }}}

" Movement {{{
" Move vertically by visual line.
nnoremap j gj
nnoremap k gk

" Highlight last inserted text.
nnoremap gV `[v`]
" }}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,~/var/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,~/var/tmp
set writebackup
" }}}

" Modelines {{{
set modelines=1  " check final line for special vim instructions
" }}}

" Autocommands and key bindings {{{
" Load template and set filename field in template header as actual file name.
autocmd bufnewfile *.cpp,*.cc,*.h,*.hpp so ~/.vim/templates/cpp_template.txt
autocmd bufnewfile *.py,*.pyc so ~/.vim/templates/py_template.txt
autocmd bufnewfile *.cpp,*.cc,*.h,*.hpp,*.py,*.pyc exe "1," . 9 . "g/Filename:.*/s//Filename: " .expand("%")

" Set the author depending on what environment variable is set.
if !empty($USERNAME)
  autocmd bufnewfile *.cpp,*.cc,*.h,*.hpp,*.py,*.pyc exe "1," . 9 . "g/Author:.*/s//Author: " .$USERNAME
elseif !empty($USER)
  autocmd bufnewfile *.cpp,*.cc,*.h,*.hpp,*.py,*.pyc exe "1," . 9 . "g/Author:.*/s//Author: " .$USER
endif

" Set creation date as today's date.
autocmd bufnewfile *.cpp,*.cc,*.h,*.hpp,*.py,*.pyc exe "1," . 9 . "g/Created:.*/s//Created: " .strftime("%Y-%m-%d")

" Other static text commands that we want.
autocmd bufwinenter *.cpp,*.cc,*.hpp,*.hh nmap ,,, :r~/.vim/templates/cpp_section.txt<CR>
autocmd bufwinenter *.py,*.pyc nmap ,,, :r~/.vim/templates/py_section.txt<CR>

" Save and load folds automatically when exiting and opening a file.
autocmd bufwinleave *.* mkview!
autocmd bufwinenter *.* silent loadview
" }}}

" vim:foldmethod=marker:foldlevel=0
