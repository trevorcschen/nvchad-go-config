local M = {}


M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
    ["<leader>dr"] = {
      "<cmd>lua require('dapui').open({reset= true})<CR>",
      "Open Debug UI",
      {noremap = true},
    },
    ["<leader>dc"] = {
      "<cmd>lua require('dapui').close({reset= true})<CR>",
      "Close Debug UI",
      {noremap = true},
    },
    ["<F10>"] ={
      '<cmd>lua require"dap".step_over() <CR>',
    },
    ["<F12>"] ={
      '<cmd>lua require"dap".step_into () <CR>',
    },
    ["<F5>"] ={
      '<cmd>lua require"dap".continue() <CR>',
    },
  },

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
    ["<leader>dgl"]  ={
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

return M
