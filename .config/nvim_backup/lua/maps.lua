local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

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

-- Ident file with Q
keymap.set('n', 'Q', 'gg=G')
