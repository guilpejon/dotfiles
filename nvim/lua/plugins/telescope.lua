return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      local actions = require("telescope.actions")

      return {
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          winblend = 0,
          mappings = {
            i = {
              ["<C-f>"] = actions.to_fuzzy_refine,
            },
          },
        },
      }
    end,
    keys = function()
      local builtin = require("telescope.builtin")
      local config = require("lazy.core.config").options

      return {
        {
          "<leader>fp",
          function()
            builtin.find_files({ cwd = config.root })
          end,
          desc = "Find Plugin File",
        },
        { "<C-p>", builtin.git_files },
        {
          "sf",
          function()
            builtin.find_files({ no_ignore = false, hidden = true })
          end,
        },
        { "sr", builtin.live_grep },
        { "\\\\", builtin.buffers },
        { "<Leader>t", builtin.help_tags },
        { "<Leader>e", builtin.diagnostics },
        { "sc", "<cmd>Telescope grep_string<cr>" },
        { "<leader>gc", "<cmd>Telescope git_commits<cr>" },
        { "<leader>gfc", "<cmd>Telescope git_bcommits<cr>" },
        { "<leader>gb", "<cmd>Telescope git_branches<cr>" },
        { "<leader>gs", "<cmd>Telescope git_status<cr>" },
      }
    end,
  },

  -- Add telescope-fzf-native
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },

  -- Add telescope-file-browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
}
