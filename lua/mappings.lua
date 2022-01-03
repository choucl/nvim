-- helper function for clean mappings
local function map(mode, lhs, rhs, opts)
   local options = { noremap = true, silent = true }
   if opts then
      options = vim.tbl_extend("force", options, opts)
   end
   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "  -- leader
map("n", "j", "gj")  -- move by visual line not actual line
map("n", "k", "gk")
map("n", "H", "^")
map("n", "L", "$")

-- Nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- TAB in normal mode will move to next buffer
map("n", "<TAB>", ":bnext<CR>")
map("n", "<S-TAB>", ":bprevious<CR>")

-- use ctrl + hjkl to navigate splits
map("n", "<c-k>", "<cmd>wincmd k<CR>")
map("n", "<c-j>", "<cmd>wincmd j<CR>")
map("n", "<c-h>", "<cmd>wincmd h<CR>")
map("n", "<c-l>", "<cmd>wincmd l<CR>")

-- Better tabbing
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Use alt + hjkl to resize windows
map("n", "<M-j>", ":resize -2<CR>")
map("n", "<M-k>", ":resize +2<CR>")
map("n", "<M-h>", ":vertical resize -2<CR>")
map("n", "<M-l>", ":vertical resize +2<CR>")
