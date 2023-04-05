require('lint').linters_by_ft = {
  ruby = {'rubocop'},
  javascript = {'eslint'},
  -- python = {'flake8'},
  -- lua = {'luacheck'},
  -- markdown = {'markdownlint'},
  -- json = {'jsonlint'},
}

-- lint every time you save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

-- lint every time you open a file
vim.api.nvim_create_autocmd({ "BufRead" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
