-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<S-h>", "0")
keymap.set("n", "<S-l>", "$")
keymap.set("n", "<leader>hw", ":HopWord<CR>")
keymap.set("n", "<leader>hp", ":HopPattern<CR>")
keymap.set("n", "<leader>hc", ":HopChar2<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- mouse enabled
keymap.set("n", "<leader>mm", ":set mouse=a<CR>")

-- resize split window
keymap.set("n", "<A-Up>", ":resize -2<CR>")
keymap.set("n", "<A-Down>", ":resize +2<CR>")
keymap.set("n", "<A-z>", ":vertical resize -2<CR>")
keymap.set("n", "<A-c>", ":vertical resize +2<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sc", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- keymap.set("n", "<leader>th", ":BufferLineCyclePrev<CR>") -- go to previous tab
-- keymap.set("n", "<leader>tl", ":BufferLineCycleNext<CR>") -- go to next tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- barbar

keymap.set("n", "<leader>h", ":BufferPrevious<CR>")
keymap.set("n", "<leader>l", ":BufferNext<CR>")
-- Re-order to previous/next
keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>")
keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>")
-- Goto buffer in position...
keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>")
keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>")
keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>")
keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>")
keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>")
keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>")
keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>")
keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>")
keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>")
keymap.set("n", "<leader>0", "<Cmd>BufferLast<CR>")
-- Close buffer
keymap.set("n", "<leader>cc", "<Cmd>BufferClose<CR>")
keymap.set("n", "<leader>cl", ":BufferCloseAllButCurrent<CR>")
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>")
-- Sort automatically by...
keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>")
keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>")
keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>")

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
