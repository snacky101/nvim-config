return {
    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup({})
            vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<cr>", {})
        end,
    },
}
