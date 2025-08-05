vim.cmd("let g:netrw_liststyle = 3")
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.scrolloff = 999


opt.spell = true

--tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false
opt.conceallevel = 2

-- opt.colorcolumn=100

--search
opt.cursorline = true

-- use system clipboard as default register
opt.clipboard:append("unnamedplus")

-- turn off the swapfile but keep buffers
opt.swapfile = false
opt.hidden = true

--
local filetype = vim.filetype

filetype.add({
    extension = {
        cmd = "rexx",
    }
})
