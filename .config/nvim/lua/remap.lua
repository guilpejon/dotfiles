vim.g.mapleader = ","
vim.keymap.set("n", "<leader>b", vim.cmd.Ex)

-- move blocks of line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor on the beginning of the line while using J
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor on middle while using C-d and C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor on the middle while using n and N while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete without adding to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- disable Q
vim.keymap.set("n", "Q", "=ap")

-- format with lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- browse through quickfix list (global)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- browse through location list (local)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- find and replace all under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Do not yank with x
vim.keymap.set('n', 'x', '"_x')

-- New tab
vim.keymap.set('n', 'te', ':tabedit')

-- Split window
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
vim.keymap.set('n', '<Space>', '<C-w>w')
vim.keymap.set('n', '<S-LEFT>', '<C-w>h')
vim.keymap.set('n', '<S-UP>', '<C-w>k')
vim.keymap.set('n', '<S-DOWN>', '<C-w>j')
vim.keymap.set('n', '<S-RIGHT>', '<C-w>l')

-- Resize window
vim.keymap.set('n', '<tab><left>', '<C-w><')
vim.keymap.set('n', '<tab><right>', '<C-w>>')
vim.keymap.set('n', '<tab><up>', '<C-w>+')
vim.keymap.set('n', '<tab><down>', '<C-w>-')

-- Map ,, to open last file
vim.keymap.set('n', ',,', '<C-^>')
