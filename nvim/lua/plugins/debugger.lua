return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()

        -- Codelldb
        dap.adapters.codelldb = {
            type = "server",
            port = "${port}",
            executable = {
                command = "/home/garla/.local/share/nvim/mason/packages/codelldb/codelldb",
                args = { "--port", "${port}" },
            },
        }
        dap.configurations.cpp = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                end,
                cwd = "${workspaceFolder}",
                stopOnEntry = false,
            },
        }

        -- NVIM-DAP-UI
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        -- Keybinds
        vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<Leader>dl", dap.list_breakpoints, {})
        vim.keymap.set("n", "<Leader>ui", dapui.toggle, {})
        vim.keymap.set("n", "<F5>", dap.continue, {})
        vim.keymap.set("n", "<F10>", dap.step_over, {})
        vim.keymap.set("n", "<F11>", dap.step_into, {})
        vim.keymap.set("n", "<F12>", dap.step_out, {})
    end,
}
