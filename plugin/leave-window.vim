if get(g:, 'loaded_leave_window', 0) == 1
    finish
endif
let g:loaded_leave_window = 1

noremap <silent> <SID>Close :call leave_window#Close()<CR>
command -nargs=0 LWClose :call leave_window#Close()<CR>

" vim: et ts=4 sts=4 sw=4
