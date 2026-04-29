-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)
--
-- NOTE: Here is where you install your plugins.
require("lazy").setup({
	spec = {
		-- NOTE: Plugins can be added via a link or github org/name. To run setup automatically, use `opts = {}`
		{ import = "custom.plugins" },
		{ "NMAC427/guess-indent.nvim", opts = {} },
		require("kickstart.plugins.autopairs"),
		-- require 'kickstart.plugins.debug',
		-- require 'kickstart.plugins.indent_line',
		-- require 'kickstart.plugins.lint',
		-- require 'kickstart.plugins.neo-tree',
		-- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommended keymaps
	},
})
