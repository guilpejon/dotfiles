local git = require("git")

return {
  git.setup({
    keymaps = {
      -- Open blame window
      blame = "<Leader>gb",
      -- Open file/folder in git repository
      browse = "<Leader>go",
      -- Open LazyGit
      open_lazygit = "<leader>gg",
    },
  }),
}
