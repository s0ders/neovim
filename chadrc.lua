---@type ChadrcConfig
local M = {}

M.mappings = require "custom.mappings"
M.ui = { theme = 'nightfox' }
M.plugins = "custom.plugins"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

return M
