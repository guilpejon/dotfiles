return {
  -- Git helpers inside Vim
  "kdheepak/lazygit.nvim",

  -- Git integration for Neovim
  "dinhhuy258/git.nvim",

  -- Colorizer for highlighting color codes in various file types
  "norcalli/nvim-colorizer.lua",

  -- Markdown preview with dependencies installation on the first run
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- Repeat.vim for repeating supported plugin maps with the dot command
  "tpope/vim-repeat",

  -- Rails.vim for enhanced Ruby on Rails support
  "tpope/vim-rails",

  -- cs"'
  {
    "tpope/vim-surround",
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
      ██████╗ ██╗   ██╗██╗██╗     
      ██╔════╝ ██║   ██║██║██║     
      ██║  ███╗██║   ██║██║██║     
      ██║   ██║██║   ██║██║██║     
      ╚██████╔╝╚██████╔╝██║███████╗
      ╚═════╝  ╚═════╝ ╚═╝╚══════╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      -- Ensure `opts.config` exists and assign the header
      opts.config = opts.config or {}
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
