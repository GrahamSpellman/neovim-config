vim.g.mapleader = " "

local keymap = vim.keymap

--Vanilla
keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>M", ":pu_<Enter><esc>")
keymap.set("n", "<leader>m", ":-pu_<Enter><esc>")

-- Telescope
keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

















