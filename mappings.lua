local M = {}
M.mappings = {
  n = {
    ["<Esc>"] = {":noh <CR>", "Clear highlights", opts = {silent = true}},
    ["H"] = {"<cmd>:bprev<CR>", "Go to previous buffer", opts = {silent = true}},
    ["L"] = {"<cmd>:bnext<CR>", "Go to next buffer", opts = {silent = true}},
    ["<leader>q"] = {"<cmd>wqa<CR>", "Save and close all buffers" },
    ["<leader>Q"] = {"<cmd>qa<CR>", "Save and close all buffers" },
  }
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

return M
