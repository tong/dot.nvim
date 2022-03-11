set nocompatible
set autoindent
set cursorline
set number
"set number relativenumber
set encoding=utf-8
set showmatch
"set formatoptions+=o    " Continue comment marker in new lines.
"set expandtab           " Insert spaces when TAB is pressed.
"set nojoinspaces
set cc=80
set ttyfast
set clipboard=unnamedplus
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set mouse=a
"set termguicolors

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

syntax on
filetype plugin on
filetype indent on

"colorscheme default
colorscheme gruvbox
"colorscheme zenburn
"autocmd BufEnter * colorscheme default
"autocmd BufEnter *.php colorscheme darkblue
"autocmd BufEnter *.vim colorscheme zenburn

set guifont=JetBrainsMono\ Nerd\ Font:h9
"set guicursor=a:blinkon100
"set guicursor=n-v-c:block-Cursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:ver10-iCursor
"set guicursor+=i:blinkwait10
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

let g:neovide_transparency=0.98
"let g:neovide_cursor_vfx_mode = "railgun"
"let g:neovide_remember_window_size=v:true
"let g:neovide_cursor_trail_length=0.8

source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/plugins.vim

"lua <<EOF
"print('Hack the planet!')
"EOF

"lua print('this also works')
"lua require('basic')
"
