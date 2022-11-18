local status, _ = pcall(vim.cmd, "colorscheme default")

if not status then
	print("Colorscheme not found!")
	return
end
