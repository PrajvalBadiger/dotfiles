local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = 'Find Files'})
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git files'})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {desc = 'Live grep'})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {desc = 'Builtin grep'})


require("telescope").setup {
    defaults = {
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        multi_icon = "<>",

        -- path_display = "truncate",

        winblend = 0,

        layout_strategy = "horizontal",
        layout_config = {
            width = 0.95,
            height = 0.85,
            -- preview_cutoff = 120,
            prompt_position = "top",

            horizontal = {
                preview_width = function(_, cols, _)
                    if cols > 200 then
                        return math.floor(cols * 0.4)
                    else
                        return math.floor(cols * 0.6)
                    end
                end,
            },

            vertical = {
                width = 0.9,
                height = 0.95,
                preview_height = 0.5,
            },

            flex = {
                horizontal = {
                    preview_width = 0.9,
                },
            },
        },

        selection_strategy = "reset",
        sorting_strategy = "ascending",
        scroll_strategy = "cycle",
        color_devicons = true,

        pickers = {
            find_files = {
                -- I don't like having the cwd prefix in my files
                find_command = vim.fn.executable "fdfind" == 1 and { "fdfind", "--strip-cwd-prefix", "--type", "f" } or
                    nil,

                mappings = {
                    n = {
                        ["kj"] = "close",
                    },
                },
            },

            buffers = {
                sort_lastused = true,
                sort_mru = true,
            },
        },

    }
}
