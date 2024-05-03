vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true })

-- Ctrl + Alt + L to format code
vim.api.nvim_set_keymap('v', '<C-A-l>', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })

local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>pd', function()
  builtin.find_files({
    prompt_title = "Enter Search Directory",
    find_command = {'find', '.', '-type', 'd'},
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        if selection then
          builtin.live_grep({
            search_dirs = {selection.value},
            prompt_title = "Search in: " .. selection.value
          })
        end
      end)
      return true
    end
  })
end, {})

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

-- Copy highlighted text from screen to text search field
vim.api.nvim_set_keymap('v', '/', 'y/<C-R>"<CR>', {noremap = true})

vim.api.nvim_set_keymap('v', '<leader>fj', ':!prettier --parser json<CR>', {noremap = true})

-- Scroll up in the buffer without moving the cursor
vim.keymap.set('n', '<C-k>', '<C-y>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-S-V>', '<C-V>', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-c>', ':noh<CR>', {noremap = true, silent = true})

vim.api.nvim_buf_set_keymap(0, 'n', '<C-A-k>', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

vim.api.nvim_create_user_command('VB', 'normal! <C-v>', {})

function toggle_comment_lines()
    local line1, line2 = unpack(vim.api.nvim_buf_get_mark(0, '<')), unpack(vim.api.nvim_buf_get_mark(0, '>'))
    local lines = vim.api.nvim_buf_get_lines(0, line1 - 1, line2, false)

    -- Determine the action: add or remove comments.
    -- We assume we are adding comments unless we find a line that starts with '//'
    local action = "add"
    for _, line in ipairs(lines) do
        if line:match("^%s*//") then  -- This pattern matches lines that start with optional whitespace followed by '//'
            action = "remove"
            break
        end
    end

    for i, line in ipairs(lines) do
        if action == "add" then
            -- Add '//' at the beginning of each line
            lines[i] = '//' .. line
        else
            -- Remove the first occurrence of '//' in each line
            lines[i] = line:gsub("^%s*//", "")
        end
    end

    -- Replace the lines in the buffer
    vim.api.nvim_buf_set_lines(0, line1 - 1, line2, false, lines)
end
-- Make sure to place this in the appropriate scope so it's executed as part of your configuration
vim.api.nvim_set_keymap('v', '<C-_>', ':lua toggle_comment_lines()<CR>', {noremap = true, silent = true})

-- Close Harpoon menu with <C-c>
-- Come up with a shortcut for this later

-- Map Ctrl-Backspace to delete the previous word in insert mode
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-w>', {noremap = true, silent = true})

