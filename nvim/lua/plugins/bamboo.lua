return {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    -- Config is called after the plugin loads
    config = function()
        require("bamboo").setup({
            -- Optional stuff
        })
        require("bamboo").load()
    end,
}
