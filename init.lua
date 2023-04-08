require('core')
require('plugins')

local lspconfig = require('lspconfig')
lspconfig.tsserver.setup {}

vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd [[
  syntax enable
  colorscheme oxocarbon
]]
