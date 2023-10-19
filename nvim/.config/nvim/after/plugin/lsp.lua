local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'rust_analyzer',
    'clangd',
    'lua_ls',
    'tsserver',
    'arduino_language_server',
})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
            hint = { enable = true },
        }
    }
})

lsp.configure('rust_analyzer', {
    settings = {
        Rust = {
            hint = { enable = true },
        }
    }
})


lsp.configure('tsserver', {
    settings = {
        javascript = {
            inlayHints = {
                includeInlayEnumMemberValueHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayParameterNameHints = 'all',
                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayVariableTypeHints = true,
            },
        },
        typescript = {
            inlayHints = {
                includeInlayEnumMemberValueHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayParameterNameHints = 'all',
                includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayVariableTypeHints = true,
            },
        },
    }
})

-- <c-j> and <c-k> for expansion
local ls = require('luasnip')
vim.keymap.set({ "i", "s" }, "<c-j>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-k>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    sources = {
        { name = 'luasnip',  priority = 40 },
        { name = 'nvim_lsp', priority = 30 },
        { name = 'buffer',   priority = 20 },
        { name = 'path',     priority = 10 },
    },
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    -- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
    if client.name == "eslint" then
        vim.cmd.LspStop('eslint')
        return
    end

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, remap = false, desc = 'Go to Definition' })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, remap = false, desc = 'Go to Implementation' })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, remap = false, desc = 'Display hover information' })
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol,
        { buffer = bufnr, remap = false, desc = 'View Workspace Symobols' })
    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float,
        { buffer = bufnr, remap = false, desc = 'View Diagnostic' })
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = bufnr, remap = false, desc = 'Go to Prev diagnostics' })
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = bufnr, remap = false, desc = 'Go to Next diagnostics' })
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action,
        { buffer = bufnr, remap = false, desc = 'View Code Actions' })
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, { buffer = bufnr, remap = false, desc = 'View references' })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, remap = false, desc = 'Rename symbol' })
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", { buffer = 0, desc = 'View Diagnostic list' })
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = false,
})
