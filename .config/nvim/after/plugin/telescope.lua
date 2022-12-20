local builtin = require('telescope.builtin')
local status, telescope = pcall(require, "telescope")

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
