return {
	"windwp/nvim-ts-autotag",
	event = { "BufReadPre", "InsertEnter" },
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
