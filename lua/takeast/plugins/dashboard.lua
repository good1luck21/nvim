local status, db = pcall(require, "dashboard")
if not status then
	return
end

db.custom_header = {
	[[               ▄▄██████████▄▄             ]],
	[[               ▀▀▀   ██   ▀▀▀             ]],
	[[       ▄██▄   ▄▄████████████▄▄   ▄██▄     ]],
	[[     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ]],
	[[    ████▄ ▄███▀              ▀███▄ ▄████  ]],
	[[   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ]],
	[[   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ]],
	[[    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ]],
	[[       ███           ▀▀           ███     ]],
	[[       ██████████████████████████████     ]],
	[[   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ]],
	[[   ███  ███ ███   ██    ██   ███▄███  ███ ]],
	[[   ▀██▄████████   ██    ██   ████████▄██▀ ]],
	[[    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ]],
	[[     ▀███▄  ▀███████    ███████▀  ▄███▀   ]],
	[[       ▀███    ▀▀██████████▀▀▀   ███▀     ]],
	[[         ▀    ▄▄▄    ██    ▄▄▄    ▀       ]],
	[[               ▀████████████▀             ]],
}

db.custom_center = {
	{
		icon = "  ",
		desc = "Recently opened files                   ",
		action = "Telescope oldfiles",
		shortcut = "SPC f h",
	},
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "SPC f f",
	},
	{
		icon = "  ",
		desc = "Find  word                              ",
		action = "Telescope live_grep",
		shortcut = "SPC f w",
	},
	{
		icon = "⏰  ",
		desc = "Git Commit                              ",
		action = "Telescope git_commits",
		shortcut = "SPC g c",
	},

	{
		icon = "  ",
		desc = "Git Status                              ",
		action = "Telescope git_status",
		shortcut = "SPC g c",
	},
	{
		icon = "  ",
		desc = "Git Files                               ",
		action = "Telescope git_files",
		shortcut = "SPC g c",
	},
}

db.custom_footer = nil
