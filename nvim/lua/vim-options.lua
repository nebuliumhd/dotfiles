-- Basic Vim settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.g.mapleader = " "

-- Basic Vim keymaps (maybe move to different file)
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", {})
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", {})
vim.keymap.set("n", "<leader>vs", ":vsp<CR>", {})
vim.keymap.set("n", "<leader>hs", ":sp<CR>", {})
