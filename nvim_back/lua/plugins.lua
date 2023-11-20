vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- theme
  use "EdenEast/nightfox.nvim"
  vim.cmd.colorscheme 'nordfox'

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  -- file browser and fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-file-browser.nvim'
    }
  }

  use 'kdheepak/lazygit.nvim' -- git helpers inside vim

  use 'nvim-lualine/lualine.nvim' -- Statusline

  use 'windwp/nvim-autopairs' -- autoclose brackets and parenthesis

  use 'norcalli/nvim-colorizer.lua' -- translate hex to colors

  -- markdown preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'tpope/vim-surround' -- cs"'

  -- repeat plugin map commands with .
  use 'tpope/vim-repeat'

  -- commenting plugin
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- focus on a single panel
  use "folke/zen-mode.nvim"

  -- window maximizer
  use "szw/vim-maximizer"

  --
  use "vim-scripts/ReplaceWithRegister"

  -- useful mappings 
  use "tpope/vim-unimpaired"

  -- just for fun
  use {
    'eandrju/cellular-automaton.nvim',
    requires = {
      'nvim-treesitter/nvim-treesitter'
    }
  }

  -- bundle helpers
  use "tpope/vim-bundler"

  -- rails goodies and helpers
  use "tpope/vim-rails"

  -- basic lsp installation with mason as lsp package manager
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
end)

