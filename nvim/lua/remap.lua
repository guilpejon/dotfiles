vim.g.mapleader = ","

local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

keymap.set("n", "<leader>b", vim.cmd.Ex)

-- move blocks of line up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor on middle while using C-d and C-u
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor on the middle while using n and N while searching
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- delete without adding to clipboard
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- disable Q
keymap.set("n", "Q", "=ap")

-- format with lsp
keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- browse through quickfix list (global)
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- browse through location list (local)
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- find and replace all under cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- delete single character without copying into register
keymap.set('n', 'x', '"_x')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', '<S-LEFT>', '<C-w>h')
keymap.set('n', '<S-UP>', '<C-w>k')
keymap.set('n', '<S-DOWN>', '<C-w>j')
keymap.set('n', '<S-RIGHT>', '<C-w>l')

-- Resize window
keymap.set('n', '<tab><left>', '<C-w><')
keymap.set('n', '<tab><right>', '<C-w>>')
keymap.set('n', '<tab><up>', '<C-w>+')
keymap.set('n', '<tab><down>', '<C-w>-')

-- Map ,, to open last file
keymap.set('n', ',,', '<C-^>')

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- make it rain
keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- neural
keymap.set("n", "<leader>n", ":NeuralPrompt<CR>")
keymap.set("n", "<leader>c", ":NeuralCode add documentation<CR>")
