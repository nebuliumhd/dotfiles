return {
    {
        "jay-babu/mason-null-ls.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            local mnl = require("mason-null-ls")

            mnl.setup({
                ensure_installed = {
                    -- DAP Adepters
                    "codelldb",
                    -- Linters
                    "cmake_lint",
                    -- Formatters
                    "stylua",
                    "clang_format",
                    "cmake_format",
                },
            })
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                -- Makes sure that Mason hast these already installed
                sources = {
                    null_ls.builtins.formatting.stylua, -- Lua
                    null_ls.builtins.formatting.clang_format, -- C/C++/C#/JSON/Java/JS
                    null_ls.builtins.formatting.cmake_format, -- CMake
                    null_ls.builtins.diagnostics.cmake_lint, -- CMake
                },
            })

            vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
        end,
    },
}
