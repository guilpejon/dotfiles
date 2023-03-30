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

  use 'kdheepak/lazygit.nvim' -- git helpers inside vim

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

  -- focus on a single panel
  use "folke/zen-mode.nvim"

  -- window maximizer
  use "szw/vim-maximizer"

  use "vim-scripts/ReplaceWithRegister"

  -- useful mappings 
  use "tpope/vim-unimpaired"

  -- just for fun
  use 'eandrju/cellular-automaton.nvim'

  -- AI code generation
  use({
    'dense-analysis/neural',
    requires = {
        'MunifTanjim/nui.nvim',
        'ElPiloto/significant.nvim'
    }
  })
end)

