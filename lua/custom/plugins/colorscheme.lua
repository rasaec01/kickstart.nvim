local M = {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			---@diagnostic disable-next-line: missing-fields
			require("tokyonight").setup({
				styles = {
					comments = { italic = false }, -- Disable italics in comments
				},
			})
		end,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optional: configure before setting colorscheme
			vim.g.moonflyItalics = false
			vim.g.moonflyNormalFloat = true
			vim.g.moonflyVirtualTextColor = true
			vim.g.moonflyTerminalColors = true

			vim.api.nvim_set_hl(0, "htmlTagName", { link = "MoonflyEmerald" })
			vim.api.nvim_set_hl(0, "tsxIntrinsicTagName", { link = "MoonflyEmerald" })
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
		config = function()
			require("onedarkpro").setup({
				styles = {
					types = "NONE",
					methods = "NONE",
					numbers = "NONE",
					strings = "NONE",
					comments = "NONE",
					keywords = "NONE",
					constants = "NONE",
					functions = "NONE",
					operators = "NONE",
					variables = "NONE",
					parameters = "NONE",
					conditionals = "NONE",
					virtual_text = "NONE",
				},
			})
			vim.cmd.colorscheme("onedark")
		end,
	},
}

vim.keymap.set("n", "<leader>cs", "<Cmd>Telescope colorscheme<CR>")

return M
