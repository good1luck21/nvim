if vim.g.vscode then
	require("takeast.core.keymaps")
else
	require("takeast.plugins-setup")
	require("takeast.core.options")
	require("takeast.core.keymaps")
	require("takeast.core.colorscheme")
	require("takeast.plugins.comment")
	require("takeast.plugins.nvim-tree")
	require("takeast.plugins.lualine")
	require("takeast.plugins.telescope")
	require("takeast.plugins.nvim-cmp")
	require("takeast.plugins.lsp.mason")
	require("takeast.plugins.lsp.lspconfig")
	require("takeast.plugins.lsp.lspsaga")
	require("takeast.plugins.lsp.null-ls")
	require("takeast.plugins.autopairs")
	require("takeast.plugins.treesitter")
	require("takeast.plugins.gitsigns")
	require("takeast.plugins.toggleterm")
	require("takeast.plugins.indent-blankline")
	require("takeast.plugins.dashboard")
	require("takeast.plugins.prettier")
	require("takeast.plugins.flutter")
	require("takeast.plugins.hop")
	-- require("takeast.plugins.bufferline")
	require("takeast.plugins.barbar")
end
