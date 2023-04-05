call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

syntax on
colorscheme catppuccin-frappe
set number
set relativenumber
