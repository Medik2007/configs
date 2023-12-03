-- Switching windows
vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { noremap = true, silent = true })

-- Changing window's width
vim.api.nvim_set_keymap('n', '<a-h>', '<c-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<a-l>', '<c-w>>', { noremap = true, silent = true })

-- Neotree
vim.api.nvim_set_keymap('n', '<c-f>', ':Neotree focus<CR>', { noremap = true, silent = true })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<a-f>f', builtin.find_files, {})
vim.keymap.set('n', '<a-f>g', builtin.live_grep, {})
vim.keymap.set('n', '<a-f>b', builtin.buffers, {})
vim.keymap.set('n', '<a-f>h', builtin.help_tags, {})

-- Tagbar
vim.keymap.set('n', '<c-t>', ':TagbarToggle<CR>', { noremap = true, silent = true })
