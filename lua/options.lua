vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set ignorecase")
vim.cmd("set smartcase")

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")

vim.g.mapleader = " "

-- Move active window (w/ tmux)
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", {})
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", {})
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", {})
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", {})

-- Split window
vim.keymap.set("n", "ss", "<cmd>split<cr>", {})
vim.keymap.set("n", "vs", "<cmd>vsplit<cr>", {})

-- Quit All
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", {})
