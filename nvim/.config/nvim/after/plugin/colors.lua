
local my_coloscheme = "gruvbox"
function ColorMyPencils(color)
    color = color or my_coloscheme
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = "none" })
    vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })
    vim.api.nvim_set_hl(0, 'VertSplit',{ bg = "none" })
end

ColorMyPencils()
