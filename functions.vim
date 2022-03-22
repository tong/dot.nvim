
function! MyTestFunction()
   echo 23 
endfunction

function! GitCommits()
    let commits = systemlist('git log --oneline | head -n10')
    "git log --oneline | head -n10
    echo map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "Git show ". matchstr(v:val, "^\\x\\+") }')
endfunction


command! MyTestFunction <line1>,<line2> call MyTestFunction()
command! GitCommits <line1>,<line2> call GitCommits()

