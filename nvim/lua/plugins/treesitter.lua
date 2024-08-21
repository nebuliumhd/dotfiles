return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- Treesitter Setup/Keymaps
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "c", "cpp"},
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}
