return {
    "christoomey/vim-tmux-navigator",
    vim.keymap.set("n", "<C-k>", ":TmuxNavigateLeft<CR>"),
    vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>"),
    vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>"),
    vim.keymap.set("n", "<C-h>", ":TmuxNavigateUp<CR>"),
}
