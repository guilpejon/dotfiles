vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- theme
  use "EdenEast/nightfox.nvim"
  vim.cmd.colorscheme 'nordfox'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  -- file browser and fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-file-browser.nvim'
    }
  }

  -- lsp default plugins from lsp-zero
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

      -- icons
      { 'onsails/lspkind-nvim' },
    }
  }

  use 'nvim-lualine/lualine.nvim' -- Statusline

  use 'windwp/nvim-autopairs' -- autoclose brackets and parenthesis

  use 'norcalli/nvim-colorizer.lua' -- translate hex to colors

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'tpope/vim-surround' -- cs"'

  -- repeat plugin map commands with .
  use 'tpope/vim-repeat'

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use "folke/zen-mode.nvim"
end)
