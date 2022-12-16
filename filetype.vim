function DetectGoHtmlTmpl()
    if expand('%:e') == "html" && search("{{") != 0
        setfiletype gohtmltmpl
    endif
endfunction

augroup filetypedetect
    au BufRead,BufNewFile *.html call DetectGoHtmlTmpl()
augroup END
