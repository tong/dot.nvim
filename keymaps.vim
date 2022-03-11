let mapleader = ","

command Q :q!
command QA :qa!

noremap <C-q> :q<CR>

" Select all
noremap <C-a> ggVG

" Move line
nnoremap <A-j> :m .+1<CR>== " Move line down
nnoremap <A-k> :m .-2<CR>== " Move line up
"noremap <c-s-down> ddp

" Split pane
"nnoremap vs :vs<CR>
"nnoremap sp :sp<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>sp :sp<CR>

" Move to pane
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <c-h> :wincmd h<CR>
"nnoremap <C-L> <C-W><C-L> " Move to right pane "ctrl-l"
"nnoremap <C-H> <C-W><C-H> " Move to left pane "ctrl-h"

" Resize pane
"noremap <C-A-k> :vertical resize +1<CR>
"noremap <C-A-j> :vertical resize -1<CR>
"noremap <C-A-l> :resize -1<CR>
"noremap <C-A-h> :resize +1<CR>
"noremap <C-A-h> :vertical resize +5<CR>
"noremap <C-A-k> :vertical resize +5<CR>
noremap <C-A-Up> :vertical resize +1<CR>
noremap <C-A-Down> :vertical resize -1<CR>
noremap <C-S-A-Up> :resize -1<CR>
noremap <C-S-A-Down> :resize +1<CR>

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

" https://github.com/neovim/neovim/issues/583
"vnoremap <silent> y y:call ClipboardYank()<cr>
"vnoremap <silent> d d:call ClipboardYank()<cr>
"nnoremap <silent> p :call ClipboardPaste()<cr>p

" Tabs
noremap <C-n> :tabnew<CR>
"noremap <leader>t :tabnew
"noremap <C-n> :tab split<CR>p

