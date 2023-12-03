require('lualine').setup()
require('nvim-treesitter.configs').setup {ensure_installed = { "c", "lua", "python", "javascript", "html", "css", "htmldjango"},highlight = {enable = true}}
require('nvim-autopairs').setup()
require('nvim-ts-autotag').setup({filetypes = { "html" , "xml" , "htmldjango" },})

vim.cmd[[colorscheme tokyonight-night]]

