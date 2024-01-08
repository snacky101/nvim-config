vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")

vim.g.mapleader = " "

-- Move active window
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- Split window
vim.keymap.set("n", "ss", "<cmd>split<cr>", {})
vim.keymap.set("n", "vs", "<cmd>vsplit<cr>", {})

-- Quit All
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", {})
