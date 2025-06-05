vim.cmd("let g:netrw_liststyle = 3")
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.scrolloff = 999

--tabs

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--idk i might undo this one
opt.wrap = false

--search
opt.cursorline = true

-- use system clipboard as default register
opt.clipboard:append("unnamedplus")

-- turn off the swapfile but keep buffers
opt.swapfile = false
opt.hidden = true
