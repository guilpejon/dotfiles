local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "sumneko_lua",
    "tailwindcss",
    "solargraph"
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
}

require 'lspconfig'.tailwindcss.setup {}
require 'lspconfig'.solargraph.setup{}
