-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- 1.first
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Colorscheme
  use {'nyoom-engineering/oxocarbon.nvim'}

  -- LSP
  use 'neovim/nvim-lspconfig'

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

  -- Editor
  -- Lua
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = require("packages.configs.trouble"),
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
