local M = {}

-- Custom mappings to change indent with <Tab> instead of < and >
M.abc = {
  v = {
     ["<Tab>"] = {">", "Increase indent"},
     ["<S-Tab>"] = {"<", "Decrease indent"}
  },

}

return M
