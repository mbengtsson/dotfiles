" Load plugins from vundle
source ~/.config/nvim/plugins.vim             " Load plugins

set clipboard=unnamed                         " sets clipboard to os default

" Theme settings
set background=dark                           " Dark background
colorscheme darkspectrum                      " Colour theme
syntax on                                     " Syntax highlighting
set scrolloff=3                               " lines of text around cursor
let g:airline_powerline_fonts = 1

" Fonts and encoding
set guifont=Inconsolata\ for\ Powerline:h14   " set font
set encoding=utf8                             " set encoding to utf8

" Tabs-stop
set tabstop=4                                 " size of hard tabstop
set expandtab                                 " always use spaces instead of tab characters
set shiftwidth=4                              " size of an indent
set autoindent                                " automatic indentation of new lines

" UI config
set number                                    " display line numbers
set showcmd                                   " show the input of an *incomplete* command
set wildmenu wildmode=full                    " show possible completions of command line commands, file names, and more.
set title                                     " show file-name in title
set ruler                                     " display cursor position in status bar
set laststatus=2                              " show the status line all the time
set nowrap                                    " no line-breaking
set visualbell                                " visual bell effect rather than beeping
set noerrorbells                              " turn off bell
set ttyfast                                   " faster redrawing
set lazyredraw                                " redraw only when needed to
set showmatch                                 " highlight matching [{()}]
set cpoptions+=$                              " show '$' at end of change

" Searching
set hlsearch                                  " highlight all search-hits
set incsearch                                 " incremental searches

" Mappings
let mapleader=","                             " maps leader to comma (,)
map<leader>n :NERDTreeToggle<CR>
map<leader>u :GundoToggle<CR>
map<leader>p :ctrlp_cmd<CR>
vnoremap . :normal .<cr>

" Buffers
set hidden                                    " buffers can be hidden without first be written
nnoremap <F5> :buffers<CR>:buffer<Space>

" NERDtree stuff
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif "Close NERDtree if it is the last window

" CtrlP stuff
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" DelimitMate stuff
let g:delimitMate_expand_cr = 2

" indentLine stuff
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

