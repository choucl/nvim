-- Window
vim.opt.splitbelow = true         -- default to split below/right
vim.opt.splitright = true

-- Apperance
vim.opt.number = true             -- enable numbers
vim.opt.showtabline = 2           -- always show tabs
vim.opt.cursorline = true         -- enable cursorline
vim.opt.colorcolumn = '80'
vim.opt.showmode = false
vim.opt.termguicolors = true
vim.o.wrap = false

-- Functionality
vim.opt.mouse = "a"               -- enable mouse
vim.opt.clipboard = "unnamedplus" -- enable universal clipboard
vim.opt.scrolloff = 3             -- leave 3 lines up/down while scrolling
vim.opt.swapfile = false          -- disable swap
vim.opt.ignorecase = true         -- case insensitive search
vim.opt.lazyredraw = true         -- usefull for regexes with large files
vim.opt.encoding = 'utf-8'

-- Indention
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.softtabstop = 4           -- tabs should be 4 "space" wide
vim.opt.shiftwidth = 4            -- tabs should be 4 "space" wide
