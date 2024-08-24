return {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    -- Config is called after the plugin loads
    config = function ()
        require("bamboo").setup({})
        require("bamboo").load()
    end
}
