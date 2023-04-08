-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- 1.first
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Colorscheme
  use {'nyoom-engineering/oxocarbon.nvim'}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

  -- Editor
  use {
    'neovim/nvim-lspconfig',
    config = require('modules.configs.lsp')
  }

  use {
    'folke/trouble.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = require('modules.configs.trouble'),
  }

  use {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
	  config = require("modules.configs.cmp"),
    dependencies = {
      {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = require("modules.configs.luasnip"),
      },
      { "onsails/lspkind.nvim" },
      { "lukas-reineke/cmp-under-comparator" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "andersevenrud/cmp-tmux" },
      { "hrsh7th/cmp-path" },
      { "f3fora/cmp-spell" },
      { "hrsh7th/cmp-buffer" },
      { "kdheepak/cmp-latex-symbols" },
      { "ray-x/cmp-treesitter" },
      -- { "tzachar/cmp-tabnine", build = "./install.sh", config = require("completion.tabnine") },
      -- {
      -- 	"jcdickinson/codeium.nvim",
      -- 	dependencies = {
      -- 		"nvim-lua/plenary.nvim",
      -- 		"MunifTanjim/nui.nvim",
      -- 	},
      -- 	config = require("completion.codeium"),
      -- },
    },
  }

  use {
    'zbirenbaum/copilot.lua',
    cmd = "Copilot",
    event = "InsertEnter",
    config = require("modules.configs.copilot"),
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = require("modules.configs.copilot_cmp"),
      },
    },
  }

  -- Bottom status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Treesitter for language highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- useful
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- deps
  use 'nvim-tree/nvim-web-devicons'

  -- others performance tools
  use 'wakatime/vim-wakatime'
end)
