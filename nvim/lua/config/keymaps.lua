-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Clear selection
keymap.set("n", "<C-L>", ":nohl<Return>")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- move blocks of line up and down
-- shift+K/shift+J
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- keep cursor on middle while using C-d and C-u
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor on the middle while using n and N while searching
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- change Q to ident
keymap.set("n", "Q", "=ap")

-- browse through quickfix list (global)
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- browse through location list (local)
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- find and replace all under cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Move window
-- keymap.set("n", "<Space>", "<C-w>w")
keymap.set("n", "<S-LEFT>", "<C-w>h")
keymap.set("n", "<S-UP>", "<C-w>k")
keymap.set("n", "<S-DOWN>", "<C-w>j")
keymap.set("n", "<S-RIGHT>", "<C-w>l")

-- Resize window
keymap.set("n", "<tab><left>", "<C-w><")
keymap.set("n", "<tab><right>", "<C-w>>")
keymap.set("n", "<tab><up>", "<C-w>+")
keymap.set("n", "<tab><down>", "<C-w>-")

-- Map ,, to open last file
keymap.set("n", ",,", "<C-^>")

--
-- PLUGINS KEYMAPS
--

-- open neotree
keymap.set("n", "<Leader>p", ":Neotree toggle<CR>", opts)

-- Copilot Next suggestion
keymap.set("i", "<M-.>", "<Plug>(copilot-next)", { silent = true })
-- Copilot Previous suggestion
keymap.set("i", ",M-,>", "<Plug>(copilot-previous)", { silent = true })
-- keymap.set("i", "<M-.>", "copilot#Next()", { expr = true, silent = true })
-- keymap.set("i", "<M-,>", "copilot#Previous()", { expr = true, silent = true })
