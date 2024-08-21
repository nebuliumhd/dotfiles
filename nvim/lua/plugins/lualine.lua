return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- local custom_gruvbox = require 'lualine.themes.gruvbox'
        -- custom_gruvbox.normal.c.bg = '#112233'
        require("lualine").setup({
            options = {
                theme = "gruvbox",
            },
        })
    end,
}
