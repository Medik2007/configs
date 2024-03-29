local cmp = require'cmp'

cmp.setup({
	snippet = {
		expand = function(args)
		vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	window = {},
	mapping = cmp.mapping.preset.insert({
		['<c-b>'] = cmp.mapping.scroll_docs(-4),
		['<c-n>'] = cmp.mapping.scroll_docs(4),
		['<c-Space>'] = cmp.mapping.complete(),
		['<c-e>'] = cmp.mapping.abort(),
		['<tab>'] = cmp.mapping.confirm({ select = true }),
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
require'lspconfig'.clangd.setup{capabilities = capabilities}
