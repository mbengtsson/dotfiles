set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" VIM-AIRLINE https://github.com/bling/vim-airline
Plugin 'bling/vim-airline'

"GUNDO https://github.com/sjl/gundo.vim
Plugin 'sjl/gundo.vim'

" NERDTREE https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" NERDTREE-GIT-PLUGIN https://github.com/Xuyuanp/nerdtree-git-plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" SYNTASTIC https://github.com/scrooloose/syntastic
Plugin 'scrooloose/syntastic'

" CTRLP https://github.com/kien/ctrlp.vim
Plugin 'kien/ctrlp.vim'

" FUGITIVE https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

" DELIMITMATE https://github.com/Raimondi/delimitMate
Plugin 'Raimondi/delimitMate'

" INDENTLINE https://github.com/Yggdroot/indentLine
Plugin 'Yggdroot/indentLine'

" VIM-ROOTER https://github.com/airblade/vim-rooter
Plugin 'airblade/vim-rooter'

" VIM-XPATH https://github.com/actionshrimp/vim-xpath
Plugin 'actionshrimp/vim-xpath'

" VIM-SCALA https://github.com/derekwyatt/vim-scala
Plugin 'derekwyatt/vim-scala'

" TAGLIST.VIM https://github.com/vim-scripts/taglist.vim
Plugin 'vim-scripts/taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

