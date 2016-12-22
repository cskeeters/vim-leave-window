function! leave_window#CloseBuffer(force)
    "echom "CloseBuffer with force:".a:force
    if a:force
        Bdelete!
    else
        Bdelete
    endif
endfunction

function! leave_window#Close(force)
    if index(g:lwc_ignore_filetypes, &filetype) != -1 ||
                \ index(g:lwc_ignore_buftypes, &buftype) != -1

        call leave_window#CloseBuffer(a:force)

        " If this is not the last window in the tab, close it
        let l:tabinfo = gettabinfo(tabpagenr())
        if len(l:tabinfo[0]['windows']) > 1
            "echom "Running close"
            close
        endif
    else
        call leave_window#CloseBuffer(a:force)
    endif
endfunction
