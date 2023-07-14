-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }

        use({
            'morhetz/gruvbox',
            as = 'gruvbox',
            config = function()
                vim.cmd('colorscheme gruvbox')
            end
        })
        use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
        use('mbbill/undotree')
        use('tpope/vim-fugitive')
        use('tpope/vim-commentary')
        use('alexghergh/nvim-tmux-navigation')
        use({
            "windwp/nvim-autopairs",
            config = function()
                require("nvim-autopairs").setup {}
            end
        })
        use({
            'ggandor/leap.nvim',
            config = function()
                require('leap').add_default_mappings()
            end
        })
        use {
            'lewis6991/gitsigns.nvim',
        }

        -- LSP and auto complition
        use {
            'VonHeikemen/lsp-zero.nvim',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                { 'rafamadriz/friendly-snippets' },
            },
            use {
                'nvim-lualine/lualine.nvim',
                requires = { 'kyazdani42/nvim-web-devicons', opt = true }
            }
        }

        use { 'stevearc/vim-arduino' }
    end)