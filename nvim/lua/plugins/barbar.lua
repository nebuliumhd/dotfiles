return {
	"romgrk/barbar.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},
	config = function()
		vim.g.barbar_auto_setup = false
        require("barbar").setup({})
	end,
}
