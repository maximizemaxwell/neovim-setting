return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "cpp",
        "c",
        "go",
        "rust",
        "solidity",
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    config = function()
      require("render-markdown").setup {
        -- Add your custom configurations here
      }
    end,
    lazy = false, -- Load this plugin immediately
  },
  {
    "goolord/alpha-nvim",
    lazy = true,
  },
  {
    "adelarsq/image_preview.nvim",
    event = "VeryLazy",
    config = function()
      require("image_preview").setup()
    end,
  },
  {
    "maximizemaxwell/gobaek.nvim",
    lazy = true,
    cmd = "Gobaek",
    config = function()
      require("gobaek").setup()
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("lint").linters_by_ft = {
        python = { "flake8" },
        go = { "golangci-lint" },
        -- 다른 언어들도 필요하면 추가
      }
    end,
  },
}
