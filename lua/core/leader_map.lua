local function leader_map()
  vim.g.mapleader = " "
  vim.api.nvim_set_keymap("n", " ", "", { noremap = true })
  vim.api.nvim_set_keymap("x", " ", "", { noremap = true })
end

leader_map()