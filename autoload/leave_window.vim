function! leave_window#CloseBuffer(force)
    "echom "CloseBuffer with force:".a:force
    if a:force
        Bdelete!
    else
        Bdelete
    endif
endfunction

function! leave_window#Close(bang)
    let force=!empty(a:bang)
    if index(g:lwc_ignore_filetypes, &filetype) != -1 ||
                \ index(g:lwc_ignore_buftypes, &buftype) != -1

        call leave_window#CloseBuffer(l:force)

        " Older versions of vim (7.4) don't support gettabinfo
        if exists("*gettabinfo")
            " If this is not the last window in the tab, close it
            let l:tabinfo = gettabinfo(tabpagenr())
            if len(l:tabinfo[0]['windows']) > 1
                "echom "Running close"
                close
            endif
        endif
    else
        call leave_window#CloseBuffer(l:force)
    endif
endfunction
