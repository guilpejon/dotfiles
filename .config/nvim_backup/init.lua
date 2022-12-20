require('base')
require('highlights')
require('maps')
require('plugins')

vim.opt.termguicolors = true
require("bufferline").setup{}

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac then
  vim.opt.clipboard:append { 'unnamedplus' }
end
