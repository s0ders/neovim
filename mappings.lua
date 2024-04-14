local M = {}

-- Disable default
M.disabled = {
  n = {
      ["<leader>td"] = "",
  }
}

-- Custom mappings to change indent with <Tab> instead of < and >
M.abc = {
  n = {
    -- Windows management
    ["<leader>ww"] = {"<C-w>v", "Split window vertically"},
    ["<leader>wq"] = {"<C-w>q", "Quit current windows"},

    -- Telescope Git related
    ["<leader>gc"] = {":Telescope git_commits <CR>", "Git commits"},
    ["<leader>gr"] = {":Telescope git_branches <CR>", "Git branches"},

    -- Trouble management
    ["<leader>tt"] = {":TroubleToggle <CR>", "Trouble"},

    -- TODOs management
    ["<leader>td"] = {":TodoTelescope <CR>", "TODOs"},
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Dap Toggle Breakpoint"
    },
    ["<leader>dbt"] = {
      "<cmd> DapTerminate <CR>",
      "Dap Terminate"
    },
    ["<leader>dn"] = {
      "<cmd> DapStepOver <CR>",
      "Dap Step Over"
    },
    ["<leader>dr"] = {
      ":lua require('dapui').open({reset = true})<CR>",
      "Dap Step Over"
    },
    ["<leader>du"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

return M
