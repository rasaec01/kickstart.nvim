-- Add to your lazy.nvim plugins table
return {
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

		vim.cmd([[ colorscheme moonfly ]])
	end,
}
