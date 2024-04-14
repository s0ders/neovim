---@type ChadrcConfig
local M = {}

M.mappings = require "custom.mappings"
M.ui = { theme = 'nightfox' }
M.plugins = "custom.plugins"

function leave_snippet()
    if
        ((vim.v.event.old_mode == 's' and vim.v.event.new_mode == 'n') or vim.v.event.old_mode == 'i')
        and require('luasnip').session.current_nodes[vim.api.nvim_get_current_buf()]
        and not require('luasnip').session.jump_active
    then
        require('luasnip').unlink_current()
    end
end

-- stop snippets when you leave to normal mode
vim.api.nvim_command([[
    autocmd ModeChanged * lua leave_snippet()
]])

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

return M
