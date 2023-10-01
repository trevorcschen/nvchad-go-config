local plugins = {
  {
    "williamboman/mason.nvim",
    opts ={
        ensure_installed ={
          "gopls",
          "golines",
          "goimports",
          "gofumpt",
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
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  }, 
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require"custom.configs.null-ls"
    end,
  },

}

return plugins
