function! leave_window#Close()
    if index(g:lwc_ignore_filetypes, &filetype) != -1 ||
                \ index(g:lwc_ignore_buftypes, &buftype) != -1
        let l:tabinfo = gettabinfo(tabpagenr())
        if len(l:tabinfo[0]['windows']) > 1
            "echom "Running close"
            close
        else
            "echom "Running bdelete"
            bdelete
        endif
    else
        " Use plugin moll/vim-bbye that will ensure that the splits are unchanged
        if exists(":Bdelete")
            "echom "Running Bdelete"
            Bdelete
        else
            "echom "Running bprev; bdelete #"
            bprev
            bdelete #
        endif
    endif
endfunction
