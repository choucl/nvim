packer = require 'packer'

packer.init {
    opt_default = ture
}

vim.cmd [[packadd packer.nvim]]

packer.startup(function()
    use {
        'wbthomason/packer.nvim',
        opt = false,
    }

    use {
        'shaunsingh/nord.nvim',
        config = function()
            vim.g.nord_borders = false
            vim.g.nord_disable_background = false
            vim.g.nord_italic = true
            require('nord').set()
        end,
    }

    use {
        'kyazdani42/nvim-web-devicons',
        after = 'nord.nvim',
    }

    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require 'plugins.lualine'
        end,
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
           'nvim-lua/plenary.nvim'
        },
        config = function()
            require 'plugins.gitsigns'
        end
    }

    use {
        'kyazdani42/nvim-tree.lua',
	cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        config = function()
            require 'plugins.nvimtree'
        end
    }

    use {
        'akinsho/bufferline.nvim',
        after = 'nvim-web-devicons',
        config = function()
            require 'plugins.bufferline'
        end,
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        after = 'nord.nvim',
        run = ':TSUpdate',
        config = function()
            require 'plugins.treesitter'
        end,
    }

    use {
        'windwp/nvim-autopairs',
        after = 'nvim-treesitter',
        config = function()
            require('nvim-autopairs').setup{}
        end
    }

    use {
        'blackCauldron7/surround.nvim',
        config = function()
            require('surround').setup { mappings_style = 'sandwich' }
        end
    }

    use {
        'neovim/nvim-lspconfig',
        config = function()
            require 'plugins.lspconfig'
        end,
    }

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require 'plugins.cmp'
        end,
    }

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }

end)
