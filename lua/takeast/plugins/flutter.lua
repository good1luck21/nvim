local status, flutter = pcall(require, "flutter-tools")
if not status then
	return
end

flutter.setup({
	ui = {
		border = "rounded",
		notification_style = "plugin",
	},
	decorations = {
		statusline = {
			app_version = true,
			device = true,
		},
	},
	flutter_path = "/Users/takeast/development/flutter/bin",
	widget_guides = {
		enabled = true,
	},
	closing_tags = {
		highlight = "ErrorMsg",
		prefix = " > ",
		enabled = true,
	},
	dev_log = {
		open_cmd = "tabedit",
	},
	debugger = {
		enabled = true,
	},
	outline = {
		open_cmd = "30vnew",
	},
	lsp = {
		color = {
			enabled = true,
			background = false,
			virtual_text = true,
			virtual_text_prefix = "■",
		},
	},
})
