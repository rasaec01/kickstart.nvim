return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", opts = {} },
	opts = {
		sections = { lualine_c = { "os.date('%a')", "data", "require'lsp-status'.status()" } },
	},
	enable = true,
}
