local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "typescript-language-server",
        "css-lsp",
        "html-lsp",
        "dockerfile-language-server",
        "emmet-ls",
        "svelte-language-server",
        "tailwindcss-language-server",
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "rust",
        "typescript",
        "svelte",
        "html",
        "css",
        "dockerfile",
        "javascript",
        "toml",
        "json",
        "diff",
      }
    }
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require('hop').setup({})
      vim.api.nvim_set_keymap("n", "<leader>ht", ":HopWordMW<CR>", {})
      vim.api.nvim_set_keymap("n", "<leader>hl", ":HopLine<CR>", {})
      vim.api.nvim_set_keymap("n", "<leader>hT", ":HopChar2MW<CR>", {})
    end
  }
}

return plugins
