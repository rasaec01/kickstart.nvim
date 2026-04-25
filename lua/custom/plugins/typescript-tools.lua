return {
	"pmizio/typescript-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"neovim/nvim-lspconfig",
	},
	ft = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
	config = function()
		require("typescript-tools").setup({
			settings = {
				separate_diagnostic_server = true,
				publish_diagnostic_on = "insert_leave",
				complete_function_calls = false,
				include_completions_with_insert_text = true,
				jsx_close_tag = {
					enable = false,
				},
			},
		})
	end,
}
