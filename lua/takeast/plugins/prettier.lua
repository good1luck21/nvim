local status, prettier = pcall(require, "prettier")
if not status then
	return
end

prettier.setup({
	bin = "prettier",
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"css",
		"scss",
		"json",
		"graphql",
		"markdown",
		"vue",
		"yaml",
		"html",
		"svelte",
	},
})
