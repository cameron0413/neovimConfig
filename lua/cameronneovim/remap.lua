vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })

-- Ctrl + Alt + L to format code
vim.api.nvim_set_keymap('v', '<C-A-l>', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
-- Scroll down in the buffer without moving the cursor
vim.keymap.set('n', '<C-j>', '<C-e>', {noremap = true, silent = true})

-- Scroll up in the buffer without moving the cursor
vim.keymap.set('n', '<C-k>', '<C-y>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-S-V>', '<C-V>', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-c>', ':noh<CR>', {noremap = true, silent = true})

vim.api.nvim_buf_set_keymap(0, 'n', '<C-A-k>', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
