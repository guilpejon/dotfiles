vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- always open the tree
local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set("n", "<leader>p", ":NvimTreeToggle<cr>", {})
vim.keymap.set("n", "<leader>v", ":NvimTreeFindFile<CR>", {})
vim.keymap.set("n", "<leader>x", ":NvimTreeCollapse<CR>", {})
