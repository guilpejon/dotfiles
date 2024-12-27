return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      models = {
        "gpt-4",
      },
      keymaps = {
        start_chat = "<leader>aa",
        send_message = "<leader>cs",
      },
    },
  },
}
