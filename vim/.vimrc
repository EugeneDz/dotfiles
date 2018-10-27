" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Dark color scheme for Vim
Plug 'tomasiser/vim-code-dark'

" Syntax and indent plugin for React jsx
Plug 'chemzqm/vim-jsx-improve'

" JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
Plug 'pangloss/vim-javascript'

" Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

" colorscheme
colorscheme codedark

" enable syntax processing
syntax enable

" number of visual spaces per TAB
set tabstop=2

" number of spaces in tab when editing
set softtabstop=2

" tabs are spaces
set expandtab

" show line numbers
set number

" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" highlight matching [{()}]
set showmatch

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
