local status, flutter = pcall(require, "flutter-tools")
if not status then
	return
end

flutter.setup({
	debugger = {
		enabled = true,
		run_via_dap = true,
	},
	outline = { auto_open = false },
	decorations = {
		statusline = { device = true, app_version = true },
	},
	widget_guides = { enabled = true, debug = true },
	dev_log = { enabled = false, open_cmd = "tabedit" },
	lsp = {
		color = {
			enabled = true,
			background = true,
			virtual_text = false,
		},
		settings = {
			showTodos = true,
			renameFilesWithClasses = "prompt",
		},
		-- on_attach = require("takeast.plugins.lsp.lspconfig").on_attach,
		-- capabilities = require("takeast.plugins.lsp.lspconfig").capabilities,
	},
})
