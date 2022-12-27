local builtin = require('telescope.builtin')

-- search git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- search all files
vim.keymap.set('n', 'sf', function()
  builtin.find_files({
    no_ignore = false,
    hidden = true
  })
end)

-- search with grep
vim.keymap.set('n', 'sr', builtin.live_grep, {})

-- see all open buffers
vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)

-- see help tags
vim.keymap.set('n', '<Leader>t', function()
  builtin.help_tags()
end)

-- run diagnostics
vim.keymap.set('n', '<Leader>e', function()
  builtin.diagnostics()
end)

vim.keymap.set("n", "sc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory

-- telescope git commands (not on youtube nvim video)
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
