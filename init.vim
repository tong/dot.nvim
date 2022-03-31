"source ~/.vimrc

filetype plugin indent on
syntax on

"set backspace=indent,eol,start " backspace deletes indent, eol and stat
"set completeopt=menu,menuone,noinsert,noselect
"set completeopt-=menu
"set completeopt+=menuone   " Show the completions UI even with only 1 item
"set completeopt-=longest   " Don't insert the longest common text
"set completeopt-=preview   " Hide the documentation preview window (shown only if available)
"set completeopt+=noinsert  " Don't insert text automatically
"set completeopt-=noselect  " Highlight the first completion automatically
set colorcolumn=80
set cursorline
"set cursorcolumn
set encoding=utf-8
set hidden
"set laststatus=0
set linebreak
set listchars=tab:\|\ 
set list
"set listchars=tab:►\ 
set matchpairs+=<:>
set mouse=a
"set mousemodel=popup 
set nocompatible
"set noerrorbells
"set nohlsearch
"set nojoinspaces
"set noruler
"set noshowmode
"set noshowcmd
set nospell
"set novisualbell
"set spelling=en,de
set noswapfile
set nowrap
set number
"set number relativenumber
"set sidescroll=1
set showmode
set showmatch
"set smartindent
"set so=1 " Number of lines between the cursor and the top/bottom of the screen
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set termguicolors
set title
set textwidth=80

"set timeoutlen 500
"set wildchar=<C-n>
"set wildignorecase
"set wildignore+=*.o,*.out,*.class
"set wildmenu
"set wildoptions+=pum

highlight ColorColumn ctermbg=black guibg=black

" Mark characters exceeding column width
"let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)

"source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/keymaps.vim
source $HOME/.config/nvim/plugins.vim

"colorscheme default
colorscheme gruvbox
"autocmd BufEnter *.vim colorscheme default

set guifont=JetBrainsMono\ Nerd\ Font:h9
set guicursor=
    \a:blinkwait150-blinkoff150-blinkon150,
    \n:block,
    \i:ver25,
    \v:block,
    \c:ver25-blinkwait175-blinkoff150-blinkon175

"let &t_SI = "\<Esc>[6 q"
"let &t_SR = "\<Esc>[4 q"
"let &t_EI = "\<Esc>[2 q"

" -- Hide last terminal cmd delayed
"augroup clearcmdline
    "autocmd!
    "function! Nothing(timer)
        "echo ''
    "endfunction
    "autocmd CmdlineLeave * call timer_start(1000, 'Nothing')
"augroup END
"
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=250})
augroup END

au BufNewFile,BufRead sxhkdrc set filetype=sxhkd

autocmd BufReadCmd *.pdf silent !xdg-open % &
autocmd BufEnter *.pdf bdelete
autocmd BufReadCmd *.png silent !xdg-open % &
autocmd BufEnter *.png bdelete
autocmd BufReadCmd *.jpg silent !xdg-open % &
autocmd BufEnter *.jpg bdelete
autocmd BufReadCmd *.jpeg silent !xdg-open % &
autocmd BufEnter *.jpeg bdelete
autocmd BufReadCmd *.gif silent !xdg-open % &
autocmd BufEnter *.gif bdelete


