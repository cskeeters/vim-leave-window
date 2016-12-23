if get(g:, 'loaded_leave_window', 0) == 1
    finish
endif
let g:loaded_leave_window = 1

if !exists(":Bdelete")
    echoerr "This program requires that moll/vim-bbye be installed"
    finish
endif

"Default Global Variables
if get(g:, 'lwc_ignore_buftypes', "") == ""
    let g:lwc_ignore_buftypes = ['nofile', 'quickfix']
endif

if get(g:, 'lwc_ignore_filetypes', "") == ""
    let g:lwc_ignore_filetypes = ['help', 'tagbar', 'qf', 'gitcommit', 'unite']
endif

command! -nargs=0 -bang -complete=buffer LWClose :call leave_window#Close(<q-bang>)

" vim: et ts=4 sts=4 sw=4
