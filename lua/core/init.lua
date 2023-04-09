require('core.leader_map')
require('core.clipboard')
require('core.options')

-- todo
vim.keymap.set("n", "<leader>ps", "<cmd>PackerSync<cr>", 
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>pu", "<cmd>PackerUpdate<cr>", 
  {silent = true, noremap = true}
)



vim.keymap.set("n", "<c-b>", "<cmd>NvimTreeToggle<cr>", 
  {silent = true, noremap = true}
)


vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")
local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}



require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}