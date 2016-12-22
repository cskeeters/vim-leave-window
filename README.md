# Leave Window

This vim plugin enables buffers to be closed without affecting splits.  It uses
[moll/vim-bbye] to do this.  Unlike vim-bbye, It can be [configured] to close
windows like 'help', 'gitcommit', and 'unite' based on either `&buftype` or
`&filetype`.

## Installation

This is a [Pathogen] compatible plugin.

## Configuration

```vim
map <leader>w :LWClose<cr>
```

[moll/vim-bbye]:https://github.com/moll/vim-bbye
[Pathogen]:http://github.com/tpope/vim-pathogen
[configured]:doc/leave_window.txt
