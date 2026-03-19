vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n', '<leader>ee', ':Yazi<cr>')

keymap.set('n', '<leader>sv', ':vsplit<cr>')
keymap.set('n', '<leader>sh', ':split<cr>')
keymap.set('n', '<leader>se', ':wincmd =<cr>')
keymap.set('n', '<leader>sx', ':close<cr>')

keymap.set('v', 'J', ':m \'>+1<cr>gv=gv')
keymap.set('v', 'K', ':m \'<-2<cr>gv=gv')

keymap.set('n', 'J', 'mzJ`z')
keymap.set('n', 'gJ', 'mzgJ`z')

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

keymap.set('n', '<leader>p', '"+p')
keymap.set('n', '<leader>P', '"+P')
keymap.set('v', '<leader>p', '"+p')

keymap.set('n', '<leader>y', '"+y')
keymap.set('n', '<leader>Y', '"+Y')
keymap.set('v', '<leader>y', '"+y')

keymap.set('n', '<leader>d', '"_d')
keymap.set('n', '<leader>D', '"_D')
keymap.set('v', '<leader>d', '"_d')

keymap.set('n', '<leader>cn', vim.cmd.cnext)
keymap.set('n', '<leader>cp', vim.cmd.cprevious)
keymap.set('n', '<leader>cx', vim.cmd.cclose)

keymap.set('t', '<C-q>', '<C-\\><C-n>')

-- Umlaute keybinds
local function set_umlaut(char, result)
    keymap.set('i', '<A-u>' .. char, result, { noremap = true })
end

set_umlaut('a', 'ä')
set_umlaut('o', 'ö')
set_umlaut('u', 'ü')
set_umlaut('e', 'ë')
set_umlaut('i', 'ï')
set_umlaut('A', 'Ä')
set_umlaut('O', 'Ö')
set_umlaut('U', 'Ü')
