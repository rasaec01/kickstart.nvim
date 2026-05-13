vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.no_python_maps = 1
vim.o.shell = "powershell.exe"
vim.opt.syntax = "off"

vim.opt.title = true
vim.opt.titlestring = "%t"

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- See `:help vim.o`
--
vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 2 -- how many spaces a TAB counts for
vim.o.shiftwidth = 2 -- how many spaces for auto-indent
vim.o.softtabstop = 2 -- how many spaces when pressing TAB in insert mode
vim.o.expandtab = true -- convert TABs to spaces

vim.o.mouse = "a"

vim.o.showmode = false
vim.o.swapfile = false

vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Enable break indent
vim.o.breakindent = true

-- Enable undo/redo changes even after closing and reopening a file
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

vim.opt.colorcolumn = "120"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1c1c1c" })
vim.opt.wrap = true -- wraps lines that exceed the window width
vim.opt.linebreak = true -- wraps at word boundaries, not mid-word

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
