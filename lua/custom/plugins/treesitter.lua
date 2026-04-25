return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	priority = 1000, -- load before other plugins
	lazy = false,

	config = function()
		vim.treesitter.language.register("tsx", "typescriptreact") -- ← add this first
		require("nvim-treesitter").setup({
			ensure_installed = {
				"bash",
				"html",
				"lua",
				"markdown",
				"tsx",
				"javascript",
				"typescript",
				"python",
			},

			auto_install = true,

			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
		})
	end,
}
