Plug 'mhinz/vim-startify'

"let g:startify_change_to_dir = 1
let g:startify_custom_header = split('          ','\n')
"let g:startify_custom_footer = split('          ','\n')
let g:startify_files_number = 24
let g:startify_change_to_vcs_root = 0
"let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")
let g:startify_bookmarks = [
            \{'a': '~/dev/armory3d/'},
            \{'g': '~/dev/gamma/'},
            \{'w': '~/work/'},
            \{'c': '~/.config/'},
            \{'z': '~/.zshrc'}
            \]
let g:startify_commands = [
            \{'h': ['Vim Reference',':help reference']},
            \]

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:git_modified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

function! s:git_untracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

function! s:git_commits()
    let commits = systemlist('git log --oneline | head -n10')
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "Git show ". matchstr(v:val, "^\\x\\+") }')
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   RECENT']            },
        \ { 'type': 'bookmarks', 'header': ['   BOOKMARKS']      },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': function('s:git_modified'),  'header': ['   ']},
        \ { 'type': function('s:git_untracked'), 'header': ['   ']},
        \ { 'type': function('s:git_commits'),  'header': ['   ']},
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'commands',  'header': ['   - - - - - - -']       },
        \ ]

