let mapleader = " "

"command Q :q!
"command QA :qa!

" Tabs
"noremap <C-n> :tabnew<CR>
"noremap <C-w> :close<CR>
"noremap <C-q> :q<CR>
"noremap <C-n> :tab split<CR>p
"noremap <leader>t :tabnew

nnoremap <Space><Space> <Cmd>nohlsearch<CR>
" <Space>twice disables highlighting of currently matched search pattern

" Select all
noremap <C-a> ggVG

" Move line
nnoremap <A-j> :m .+1<CR>== " Move line down
nnoremap <A-k> :m .-2<CR>== " Move line up
"noremap <c-s-down> ddp

map <F2> :bprevious<CR>
map <F3> :bnext<CR>

" Insert blank line
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Insert single space
:nnoremap <space> i<space><esc>l

" Split pane
"nnoremap vs :vs<CR>
"nnoremap sp :sp<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>sp :sp<CR>

" Move to pane
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-l> :wincmd l<CR>
"nmap <silent> <c-h> :wincmd h<CR>
for i in ['h', 'j', 'k', 'l']
    execute('noremap <C-' . i . '> <Cmd>wincmd ' . i . '<CR>')
    execute('inoremap <C-' . i . '> <Esc><Cmd>wincmd ' . i . '<CR>')
    "execute('tnoremap <C-' . i . '> <C-\><C-n><Cmd>wincmd ' . i . '<CR>')
endfor

" Resize pane
"noremap <silent> <c-a-j> :resize -25<CR>
"noremap <silent> <c-a-k> :resize +25<CR>
"noremap <silent> <c-a-l> :vertical resize +25<CR>
"noremap <silent> <c-a-h> :vertical resize -25<CR>

" Clipboard
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction

noremap 1 yy:call ClipboardYank()<CR>
noremap 2 :call ClipboardPaste()<CR>p
noremap 3 dd:call ClipboardYank()<CR>

"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>

" Kill bad habits
"noremap h <nop>
"noremap j <nop>
"noremap k <nop>
"noremap l <nop>
"inoremap <esc> <nop>

" Open url in brower
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Terminal        
nnoremap <leader>t :ToggleTerm<CR>

" Git
"nnoremap <silent> <leader>? :GitMessenger<CR>

