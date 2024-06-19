local git = require("git")

return {
  git.setup({
    keymaps = {
      -- Open blame window
      blame = "gb",
      -- Open file/folder in git repository
      browse = "go",
      -- Open LazyGit
      open_lazygit = "<leader>gg",
    },
  }),
}
