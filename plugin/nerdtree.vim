Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

nnoremap <C-t> :NERDTreeToggle<CR>                               
"noremap <leader>n :NERDTreeToggle<CR>                                           
"noremap <leader>N :NERDTree<CR>                                                 
"noremap <leader>b :NERDTreeFind<CR>

"autocmd VimEnter * NERDTree
"autocmd VimEnter * NERDTree | wincmd p
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"autocmd BufEnter NERDTree* | execute 'normal R'

" Start NERDTree when Vim starts with a directory argument.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
								"\ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree')
    \ && b:NERDTree.isTabTree() | quit | endif

