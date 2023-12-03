vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.cmd('set number relativenumber')
vim.cmd('set autoindent')
vim.cmd('set expandtab')
vim.cmd('set expandtab')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set smarttab')
vim.cmd('set softtabstop=4')
vim.cmd('set encoding=UTF-8')
vim.cmd('set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = {
        bottom = {
        },
        left = {
          {
            title = "Neo-Tree",
            ft = "neo-tree",
            filter = function(buf)
              return vim.b[buf].neo_tree_source == "filesystem"
            end,
            size = { height = 1 },
          },
        },
        }
    }
)


require("neo-tree").setup()
--require("edgy").setup()
require('lualine').setup()
require('nvim-treesitter.configs').setup {ensure_installed = { "c", "lua", "python", "javascript", "html", "css", "htmldjango"},
                                                 highlight = {enable = true}}
require('nvim-autopairs').setup()
require('nvim-ts-autotag').setup({filetypes = { "html" , "xml" , "htmldjango" },})

require("Lsp")
--require("Edgy")

vim.cmd[[colorscheme tokyonight-night]]






require("lazy").setup()

