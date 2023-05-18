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

M.hop = {
  n = {
    ["<leader>ht"] = {":HopWordMW<CR>", opts = { silent = true }},
    ["<leader>hl"] = {":HopLine<CR>", opts = { silent = true }},
    ["<leader>hT"] = {":HopChar2MW<CR>",  opts = { silent = true }},
  }
}

return M
