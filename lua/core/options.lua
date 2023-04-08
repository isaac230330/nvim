local global = require("core.global")

local function load_options()
	local global_local = {
    autoindent = true,

    number = true,
    relativenumber = true,

    expandtab = true,
    shiftwidth = 2,
    tabstop = 2,
    softtabstop = 2,
    smartcase = true,
		smarttab = true,

    showcmd = true,
	}

	for name, value in pairs(global_local) do
		vim.o[name] = value
	end

  vim.cmd [[
    colorscheme oxocarbon
  ]]
end

load_options()
