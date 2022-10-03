local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager
  use {
    'svrana/neosolarized.nvim', -- Solarized colorscheme
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  use 'nvim-lualine/lualine.nvim' -- Statusline

	use({
		"hrsh7th/nvim-cmp",
		requires = {
      'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim's built-in LSP
      'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words
      'hrsh7th/nvim-cmp', -- Completion
		},
	})

  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use { -- Syntax highlighter
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

	use({ -- fuzzy finder
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim", -- Common utilities
      'nvim-telescope/telescope-file-browser.nvim'
		},
	})

	use({
		"neovim/nvim-lspconfig", -- language server protocol
		requires = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
      'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
		},
	})

  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use 'norcalli/nvim-colorizer.lua' -- translate hex to colors

  use 'L3MON4D3/LuaSnip'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  -- use 'github/copilot.vim'

  -- use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  -- cs"'
  use 'tpope/vim-surround'

  -- repeat plugin map commands with .
  use 'tpope/vim-repeat'

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
end)
