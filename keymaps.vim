let mapleader = " "

 " Kill bad habits
"noremap h <nop>
"noremap j <nop>
"noremap k <nop>
"noremap l <nop>
"inoremap <esc> <nop>

command Q :q!
"command QA :qa!

" Esc in insert mode
imap jj <Esc>

" <Space>twice disables highlighting of currently matched search pattern
nnoremap <Space><Space> <Cmd>nohlsearch<CR>

" Select all
noremap <C-a> ggVG

" Copy/Paste
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+P

" Move line
nnoremap <a-j> :m .+1<CR>" Move line down
nnoremap <a-k> :m .-2<CR>" Move line up
"noremap <c-s-down> ddp

map <F2> :bprevious<CR>
map <F3> :bnext<CR>

" Insert blank line
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Insert single space
:nnoremap <space> i<space><esc>l

" Move to pane
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-l> :wincmd l<CR>

for i in ['h', 'j', 'k', 'l']
    execute('noremap <C-' . i . '> <Cmd>wincmd ' . i . '<CR>')
    execute('inoremap <C-' . i . '> <Esc><Cmd>wincmd ' . i . '<CR>')
    execute('tnoremap <C-' . i . '> <C-\><C-n><Cmd>wincmd ' . i . '<CR>')
endfor

" Resize pane
"noremap <silent> <c-a-h> :vertical resize -25<CR>
"noremap <silent> <c-a-j> :resize -25<CR>
"noremap <silent> <c-a-k> :resize +25<CR>
"noremap <silent> <c-a-l> :vertical resize +25<CR>
"nnoremap + :vertical resize +25<CR>
"nnoremap - :vertical resize -25<CR>

"nnoremap <a-h> :vertical resize -20<CR>
"nnoremap <a-j> :resize -20<CR>
"nnoremap <a-k> :resize +20<CR>
"nnoremap <a-l> :vertical resize +20<CR>

 "nnoremap <leader>h :vertical resize -25<CR>
"nnoremap <leader>rh :vertical resize -25<CR>
"nnoremap <leader>rl :vertical resize +25<CR>
"nnoremap <leader>rj resize -25<CR>
"nnoremap <leader>rk resize +25<CR>

"nnoremap <s-j> :vertical resize -25<CR>
"nnoremap <s-k> :vertical resize +25<CR>
"nnoremap <c-s-j> :resize -25<CR>
"nnoremap <c-s-k> :resize +25<CR>

" Tabs
"noremap <C-n> :tabnew<CR>
"noremap <C-w> :close<CR>
"noremap <C-q> :q<CR>
"noremap <C-n> :tab split<CR>p

noremap <leader>t :tabnew<CR>

" Clipboard
function! ClipboardYank() range
    call system('xclip -i -selection primary', @@)
endfunction
function! ClipboardPaste()
    let @@ = system('xclip -o -selection primary')
endfunction

"if has('gui_running')
    "lua vim.notify("GUUUUUUUIIIIIIIIIIIIIIIIIIIII")
 """ copy selection or line
    ""noremap 1 "+yy
    """ paste before
    ""noremap 2 "+p
    """ paste after
    ""noremap @ "+P
""else
    ""noremap 1 yy:call ClipboardYank()<CR>
    ""noremap 2 :call ClipboardPaste()<CR>p
    ""noremap @ :call ClipboardPaste()<CR>P
    ""noremap 3 dd:call ClipboardYank()<CR>
"endif

"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>

"noremap 1 yy:call ClipboardYank()<CR>
"noremap 2 :call ClipboardPaste()<CR>p
"noremap @ :call ClipboardPaste()<CR>P
"noremap 3 dd:call ClipboardYank()<CR>

" Copy filename to clipboard (http://vim.wikia.com/wiki/Copy_filename_to_clipboard)
noremap ,cs :let @+=expand("%")<CR>
noremap ,cl :let @+=expand("%:p")<CR>

" Formatting
command Pretty :lua vim.lsp.buf.formatting() 
"command Format :lua vim.lsp.buf.formatting() 
nnoremap <A-S-f> :Pretty<CR>

" Open url in brower
let g:netrw_nogx = 1 " disable netrw's gx mapping
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Filetree
nnoremap <C-n> :NvimTreeToggle<CR>
"nnoremap <leader>n :NvimTreeFindFile<CR>

" Git
nnoremap <silent> <leader>? :GitMessenger<CR>

" Terminal        
nnoremap <leader>tt :ToggleTerm<CR>

"let g:fzf_layout = { 'window': 'enew' }
"function! FZFfiles()
    "call fzf#run({
    "\   'source': 'ag  -filU -g "" --ignore ./var --ignore ./develop-eggs --ignore *.py?',
    "\   'sink':    'e',
    "\   'options': '-m',
    "\ })
"endfunction
"function! FZFGitFiles()
  "call fzf#run({
    "\ 'source': 'git ls-files',
    "\ 'sink': 'e',
    "\ 'options': '-m',
    "\ })
"endfunction
"noremap <leader>/ :call FZFfiles()<CR>
"noremap <leader>. :call FZFGitFiles()<CR>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

