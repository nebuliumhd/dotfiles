return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- CRTL+P
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- vim.g.mapleader+F+G
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            -- Adds a "ui-select" extension to telescope
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
