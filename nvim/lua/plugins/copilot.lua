return {
  "github/copilot.vim",
  dependencies = { "catppuccin/nvim" },
  event = "VimEnter",
  init = function()
    vim.g.copilot_no_tab_map = false
    vim.g.copilot_workspace_folders = { vim.fn.getcwd() }
  end,
  keys = {
    { "<Tab>", "copilot#Accept()", { expr = true, silent = true } },
    { "<M-]>", "copilot#Next()", { expr = true, silent = true } },
    { "<M-[>", "copilot#Previous()", { expr = true, silent = true } },
    { "<M-/>", "copilot#Toggle()", { expr = true, silent = true } },
  },
}
