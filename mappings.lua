local M = {}

-- Disable default
M.disabled = {
  n = {
      ["<leader>td"] = "",
  }
}

-- Custom mappings to change indent with <Tab> instead of < and >
M.abc = {
  v = {
     ["<Tab>"] = {">gv", "Increase indent"},
     ["<S-Tab>"] = {"<gv", "Decrease indent"}
  },

  n = {
    -- Windows management
    ["<leader>ww"] = {"<C-w>v", "Split window vertically"},
    ["<leader>wq"] = {"<C-w>q", "Quit current windows"},

    -- Telescope Git related
    ["<leader>gc"] = {":Telescope git_commits <CR>", "Git commits"},
    ["<leader>gr"] = {":Telescope git_branches <CR>", "Git branches"},

    -- TODOs management
    ["<leader>td"] = {":TodoTelescope <CR>", "TODOs"},
  },
}

return M
