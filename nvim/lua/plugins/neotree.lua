return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    default_component_configs = {
      git_status = {
        symbols = {
          added     = "",  -- new file
          modified  = "",  -- pencil
          deleted   = "✖",  -- deleted
          renamed   = "→",  -- renamed
          untracked = "?",   -- untracked
          ignored   = "◌",  -- ignored
          unstaged  = "○",  -- unstaged changes
          staged    = "●",  -- staged
          conflict  = "",  -- merge conflict
        },
      },
    },
  },
}
