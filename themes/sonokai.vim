let g:sonokai_style = 'atlantis'
colo sonokai
syntax on
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

