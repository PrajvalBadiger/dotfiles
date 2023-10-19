require("zen-mode").setup({
    window = {
        width = 90,
        options = {
            number = true,
            relativenumber = true,
            signcolumn = "no",
            cursorcolumn = false,
        },
    },
    plugins = {},
})

vim.keymap.set("n", "<leader>z", "<cmd>=require('zen-mode').toggle()<CR>", {desc = 'Toggle zen mode'})
