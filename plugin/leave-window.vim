if get(g:, 'loaded_leave_window', 0) == 1
    finish
endif
let g:loaded_leave_window = 1

"Default Global Variables
if get(g:, 'lwc_ignore_buftypes', "") == ""
    let g:lwc_ignore_buftypes = ['nofile']
endif

if get(g:, 'lwc_ignore_filetypes', "") == ""
    let g:lwc_ignore_filetypes = ['help', 'tagbar', 'quickfix', 'gitcommit', 'unite']
endif

command -nargs=0 LWClose :call leave_window#Close()

" vim: et ts=4 sts=4 sw=4
