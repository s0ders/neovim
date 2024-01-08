local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",    -- golang
        "gofumpt",
        "goimports",
        "golines",
        "delve",
        "marksman", -- markdown
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "bash",
        -- dev 
        "html",
        "css",
        "javascript",
        "go",
        "gomod",
        "gosum",
        "json",
        "yaml",
        "sql",
        "markdown",
        "dockerfile",
      },
    },
  },
  {
    "simrat39/symbols-outline.nvim",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    cmd = "SymbolsOutline",
    opts = {
      symbols = {
        File = { icon = "", hl = "@text.uri" },
        Module = { icon = "󰕳", hl = "@namespace" },
        Namespace = { icon = "", hl = "@namespace" },
        Package = { icon = "", hl = "@namespace" },
        Class = { icon = "", hl = "@type" },
        Method = { icon = "", hl = "@method" },
        Property = { icon = "", hl = "@method" },
        Field = { icon = "", hl = "@field" },
        Constructor = { icon = "", hl = "@constructor" },
        Enum = { icon = "", hl = "@type" },
        Interface = { icon = "", hl = "@type" },
        Function = { icon = "󰊕", hl = "@function" },
        Variable = { icon = "󰀫", hl = "@constant" },
        Constant = { icon = "󰏿", hl = "@constant" },
        String = { icon = "", hl = "@string" },
        Number = { icon = "#", hl = "@number" },
        Boolean = { icon = "", hl = "@boolean" },
        Array = { icon = "", hl = "@constant" },
        Object = { icon = "⦿", hl = "@type" },
        Key = { icon = "", hl = "@type" },
        Null = { icon = "NULL", hl = "@type" },
        EnumMember = { icon = "", hl = "@field" },
        Struct = { icon = "", hl = "@type" },
        Event = { icon = "🗲", hl = "@type" },
        Operator = { icon = "+", hl = "@operator" },
        TypeParameter = { icon = "𝙏", hl = "@parameter" },
        Component = { icon = "", hl = "@function" },
        Fragment = { icon = "", hl = "@constant" },
      }
    }
  },
  {
   "folke/trouble.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },
   cmd = { "Trouble", "TroubleCLose", "TroubleToggle", "TroubleRefresh"},
   opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "TodoTrouble", "TodoTelescope" },
    opts = {}
  }
}

require'nvim-web-devicons'.setup {
  override = {
    go = {
      icon = "󰟓",
      color = "#00ADD8",
      cterm_color = "65",
      name = "Go"
    }
  };

  override_by_filename = {
    ["go.mod"] = {
      icon = "󰟓",
      color = "#EA3E70",
      name = "go.mod"
    },
    ["go.sum"] = {
      icon = "󰟓",
      color = "#EA3E70",
      name = "go.sum"
    },
    [".gitignore"] = {
      icon = "",
      color = "#F1502F",
      name = "Gitignore"
    }

  };

  override_by_extension = {
    ["pl"] = {
      icon = "",
      color = "#B784E3",
      name = "Perl"
    },
    ["pm"] = {
      icon = "",
      color = "#B784E3",
      name = "Perl"
    },
    ["sql"] = {
      icon = "",
      color = "#FFCA28",
      name = "SQL"
    }
  };

}

return plugins
