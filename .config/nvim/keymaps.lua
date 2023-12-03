-- Neotree focus
vim.api.nvim_set_keymap('n', '<c-f>', ':Neotree focus<CR>', { noremap = true, silent = true })

-- Switching windows
vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { noremap = true, silent = true })

-- Changing window's width
vim.api.nvim_set_keymap('n', '<a-h>', '<c-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<a-l>', '<c-w>>', { noremap = true, silent = true })
