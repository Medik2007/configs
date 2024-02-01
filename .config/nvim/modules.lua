require('lualine').setup()
require('nvim-autopairs').setup()
require('mini.animate').setup()
require("toggleterm").setup()

require('nvim-ts-autotag').setup({
    filetypes = { "html" , "xml" , "htmldjango" },
})

require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "python", "javascript", "html", "css", "htmldjango", "cpp" },
    highlight = {enable = true}
}

require'alpha'.setup(require'alpha.themes.dashboard'.config)

vim.cmd[[colorscheme tokyonight-night]]
