local hl = vim.api.nvim_set_hl
local my_colorscheme = "gruvbox"

function ColorMyPencils(color)
    color = color or my_colorscheme
    vim.o.background = "dark"
    vim.cmd.colorscheme(color)

    hl(0, "Normal", { bg = "none" })
    hl(0, "NormalFloat", { bg = "none" })
    hl(0, 'SignColumn', { bg = "none" })
    hl(0, 'Cursor', { reverse = true })
    hl(0, 'VertSplit', { bg = "none" })
    hl(0, "DiagnosticError", { fg = "red", bg = "none" })
    hl(0, "DiagnosticSignError", { fg = "red", bg = "none" })
    hl(0, "DiagnosticSignHint", { fg = "Green", bg = "none" })
    hl(0, "DiagnosticSignInfo", { fg = "white", bg = "none" })
    hl(0, "DiagnosticSignWarn", { fg = "yellow", bg = "none" })
end

require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = true,
    invert_signs = true,
    invert_intend_guides = true,
    inverse = true,
    transparent_mode = true,
})

ColorMyPencils()
