local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{import = "grams.plugins"}})

vim.g.everforest_background = "soft"
vim.g.everforest_better_performance = 1

local function isempty(s)
  return s == nil or s == ""
end
local function use_if_defined(val, fallback)
  return val ~= nil and val or fallback
end

local conda_prefix = os.getenv("CONDA_PREFIX")
if not isempty(conda_prefix) then
  vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, conda_prefix .. "/bin/python")
  vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, conda_prefix .. "/bin/python")
else
  vim.g.python_host_prog = use_if_defined(vim.g.python_host_prog, "python")
  vim.g.python3_host_prog = use_if_defined(vim.g.python3_host_prog, "python3")
end
