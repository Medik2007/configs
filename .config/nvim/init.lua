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
	"nvim-tree/nvim-tree.lua",
	"neovim/nvim-lspconfig",
	"nvim-lualine/lualine.nvim",
	"folke/tokyonight.nvim",
	"nvim-treesitter/nvim-treesitter",
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',
})

require("nvim-tree").setup()
require('lualine').setup()
require'nvim-treesitter.configs'.setup {ensure_installed = { "c", "lua", "python", "javascript", "html", "css", },  highlight = {enable = true}}
require('nvim-ts-autotag').setup()
require('nvim-autopairs').setup()

vim.cmd[[colorscheme tokyonight-night]]

vim.api.nvim_set_keymap('n', '<C-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

local cmp = require'cmp'

cmp.setup({
	snippet = {
		expand = function(args)
		vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	window = {},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({{ name = 'nvim_lsp' },{ name = 'vsnip' }}, {{ name = 'buffer' }}),
})

cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {{ name = 'buffer' }}
})


cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({{ name = 'path' }}, {{ name = 'cmdline' }})
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.pyright.setup{capabilities = capabilities}
require'lspconfig'.tsserver.setup{capabilities = capabilities}
require'lspconfig'.html.setup{capabilities = capabilities}
require'lspconfig'.cssls.setup{capabilities = capabilities}
