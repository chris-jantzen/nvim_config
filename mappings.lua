local M = {}
M.mappings = {
  n = {
    ["<Esc>"] = {":noh <CR>", "Clear highlights", opts = {silent = true}},
    ["H"] = {"<cmd>:bprev<CR>", "Go to previous buffer", opts = {silent = true}},
    ["L"] = {"<cmd>:bnext<CR>", "Go to next buffer", opts = {silent = true}},
    ["<leader>q"] = {"<cmd>wqa<CR>", "Save and close all buffers" },
    ["<leader>Q"] = {"<cmd>qa<CR>", "Close all buffers" },
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
  t = {
    ["<C-x>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.tmux = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint<CR>", "Add breakpoint at line" },
    ["<leader>dr"] = { "<cmd>DapContinue<CR>", "Run or continue the debugger" },
  },
}

return M
