-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/bitter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["copilot.lua"] = {
    commands = { "Copilot" },
    config = { "\27LJ\2\nﬂ\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\14filetypes\1\0\2\25big_file_disabled_ft\1\rdap-repl\1\15suggestion\1\0\1\fenabled\1\npanel\1\0\1\fenabled\1\bcmp\1\0\0\1\0\2\vmethod\26getCompletionsCycling\fenabled\2\nsetup\fcopilot\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3d\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvimØ\1\0\1\3\0\b\0\0264\1\t\0005\2\0\0>\0\2\2>\2\1\0015\2\1\0>\0\2\2>\2\2\0015\2\2\0>\0\2\2>\2\3\0015\2\3\0>\0\2\2>\2\4\0015\2\4\0>\0\2\2>\2\5\0015\2\5\0>\0\2\2>\2\6\0015\2\6\0>\0\2\2>\2\a\0015\2\a\0>\0\2\2>\2\b\1L\1\2\0\1\2\0\0\b‚îÇ\1\2\0\0\b‚ï∞\1\2\0\0\b‚îÄ\1\2\0\0\b‚ïØ\1\2\0\0\b‚îÇ\1\2\0\0\b‚ïÆ\1\2\0\0\b‚îÄ\1\2\0\0\b‚ï≠b\0\3\b\0\4\0\0146\3\0\0006\5\1\0009\5\2\0059\5\3\5)\a\0\0B\5\2\0A\3\0\3\5\3\0\0X\5\4Ä\5\4\1\0X\5\2Ä\18\5\2\0B\5\1\1K\0\1\0\24nvim_win_get_cursor\bapi\bvim\vunpack0\0\1\4\0\2\0\6\18\3\0\0009\1\0\0B\1\2\2+\2\1\0=\2\1\1L\1\2\0\15scrollable\ninfo_ë\1\0\2\6\0\2\0\29+\2\0\0009\3\0\0009\3\1\3\15\0\3\0X\4\14Ä9\3\0\0019\3\1\3\15\0\3\0X\4\nÄ9\3\0\0019\3\1\0039\4\1\1\"\3\4\0039\4\0\0009\4\1\0049\5\1\0\"\4\5\4!\2\4\3X\3\3Ä9\3\1\0019\4\1\0!\2\4\3)\3\0\0\0\2\3\0X\3\2Ä+\3\1\0X\4\1Ä+\3\2\0L\3\2\0\nscore\20completion_itemö\2\0\2\v\2\16\0#-\2\0\0009\2\0\0025\4\1\0006\5\2\0009\5\3\5'\a\4\0-\b\1\0009\b\5\b-\t\1\0009\t\6\t-\n\1\0009\n\a\nB\5\5\2=\5\b\4B\2\2\2\18\4\0\0\18\5\1\0B\2\3\0026\3\2\0009\3\t\0039\5\5\2'\6\n\0005\a\v\0B\3\4\2'\4\f\0:\5\1\3'\6\f\0&\4\6\4=\4\5\2'\4\14\0:\5\2\3'\6\15\0&\4\6\4=\4\r\2L\2\2\0\6¿\0¿\6)\n    (\tmenu\6 \1\0\1\14trimempty\2\a%s\nsplit\15symbol_map\bcmp\ttype\tkind\nforce\20tbl_deep_extend\bvim\1\0\2\tmode\16symbol_text\rmaxwidth\0032\15cmp_formatπ\2\0\1\b\3\f\0'-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\29Ä6\1\2\0'\3\3\0B\1\2\0029\1\4\1B\1\1\2\15\0\1\0X\2\20Ä6\1\5\0006\3\6\0009\3\a\0039\3\b\3)\5\0\0B\3\2\0A\1\0\0036\3\6\0009\3\t\0039\3\n\3-\5\1\0'\a\v\0B\5\2\0A\3\0\1-\3\2\0\18\5\1\0\18\6\2\0\18\a\0\0B\3\4\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\a¿\1¿\3¿!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\24nvim_win_get_cursor\bapi\bvim\vunpack\31expand_or_locally_jumpable\fluasnip\frequire\21select_next_item\fvisible⁄\1\0\1\6\2\n\0\29-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\19Ä6\1\2\0'\3\3\0B\1\2\0029\1\4\1)\3ˇˇB\1\2\2\15\0\1\0X\2\tÄ6\1\5\0009\1\6\0019\1\a\1-\3\1\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\a¿\1¿\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisibleC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireí\f\1\0\18\0[\0≤\0015\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\3\0B\1\2\2=\1\3\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\5\0B\1\2\2=\1\5\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\6\0B\1\2\2=\1\6\0003\1\a\0003\2\b\0006\3\t\0009\3\n\0033\5\v\0B\3\2\0026\4\0\0'\6\f\0B\4\2\0029\5\14\4=\5\r\0043\5\15\0=\5\14\0046\5\0\0'\a\16\0B\5\2\0023\6\18\0=\6\17\0056\6\0\0'\b\19\0B\6\2\0026\a\0\0'\t\6\0B\a\2\0029\b\20\a5\n\29\0005\v\24\0005\f\22\0\18\r\2\0'\15\21\0B\r\2\2=\r\23\f=\f\25\v5\f\27\0\18\r\2\0'\15\26\0B\r\2\2=\r\23\f=\f\28\v=\v\30\n5\v\31\0004\f\v\0006\r\0\0'\15 \0B\r\2\0029\r!\r>\r\1\f6\r\0\0'\15 \0B\r\2\0029\r\"\r>\r\2\f9\r#\5>\r\3\f9\r$\5>\r\4\f9\r\17\5>\r\5\f6\r\0\0'\15%\0B\r\2\0029\r&\r>\r\6\f9\r\3\5>\r\a\f9\r'\5>\r\b\f9\r(\5>\r\t\f9\r)\5>\r\n\f=\f*\v=\v+\n5\v-\0005\f,\0=\f.\v3\f/\0=\f0\v=\v1\n9\v2\a9\v3\v9\v4\v5\r:\0009\0142\a9\0145\0145\0166\0009\0177\a9\0178\17=\0179\16B\14\2\2=\14;\r9\0142\a9\14<\14B\14\1\2=\14=\r9\0142\a9\14>\14B\14\1\2=\14?\r9\0142\a9\14@\14)\16¸ˇB\14\2\2=\14A\r9\0142\a9\14@\14)\16\4\0B\14\2\2=\14B\r9\0142\a9\14C\14B\14\1\2=\14D\r9\0142\a3\16E\0005\17F\0B\14\3\2=\14G\r9\0142\a3\16H\0005\17I\0B\14\3\2=\14J\rB\v\2\2=\v2\n5\vL\0003\fK\0=\fM\v=\vN\n4\v\f\0005\fO\0>\f\1\v5\fP\0>\f\2\v5\fQ\0>\f\3\v5\fR\0>\f\4\v5\fS\0>\f\5\v5\fT\0>\f\6\v5\fU\0>\f\a\v5\fV\0>\f\b\v5\fW\0>\f\t\v5\fX\0>\f\n\v5\fY\0>\f\v\v=\vZ\nB\b\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\fcopilot\1\0\1\tname\18latex_symbols\1\0\1\tname\vbuffer\1\0\1\tname\forgmode\1\0\1\tname\ttmux\1\0\1\tname\nspell\1\0\1\tname\15treesitter\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\fsnippet\vexpand\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-w>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\21select_prev_item\t<CR>\1\0\0\rbehavior\fReplace\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\vinsert\vpreset\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\fsorting\16comparators\norder\vlength\14sort_text\nunder\25cmp-under-comparator\nexact\voffset\nscore\15prioritize\28copilot_cmp.comparators\1\0\1\20priority_weight\3\2\vwindow\1\0\0\18documentation\1\0\0\17CmpDocBorder\15completion\1\0\0\vborder\1\0\2\14max_width\3P\15max_height\3\20\vNormal\nsetup\flspkind\0\15lsp_scores\23cmp.config.compare\0\tinfo\ninfo_\21cmp.utils.window\0\18schedule_wrap\bvim\0\0\bcmp\ttype\1\0\0\tkind\bget\24modules.utils.icons\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nH\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\1K\0\1\0\nsetup\rtsserver\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeOpen", "NvimTreeFindFile", "NvimTreeFindFileToggle", "NvimTreeRefresh" },
    config = { "\27LJ\2\n¢\22\0\0\t\0p\0™\0015\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\3\0B\1\2\2=\1\3\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\5\0B\1\2\2=\1\5\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\6\0B\1\2\2=\1\6\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\a\0B\1\2\2=\1\a\0006\1\b\0009\1\t\1+\2\1\0=\2\n\0016\1\0\0'\3\v\0B\1\2\0029\1\f\0015\3\r\0005\4\14\0005\5\15\0005\6\16\0=\6\17\5=\5\18\4=\4\19\0035\4\20\0005\5\21\0=\5\22\0045\5\23\0005\6\24\0=\6\25\5=\5\26\0045\5\27\0005\6\28\0=\6\29\0055\6\31\0009\a\5\0009\a\30\a=\a \0069\a\5\0009\a!\a=\a\"\0069\a\a\0009\a#\a=\a$\0065\a&\0009\b\6\0009\b%\b=\b'\a9\b\6\0009\b(\b=\b)\a9\b\6\0009\b*\b=\b+\a9\b\6\0009\b,\b=\b-\a9\b\6\0009\b.\b=\b/\a9\b\6\0009\b0\b=\b1\a9\b\6\0009\b2\b=\b3\a=\a\6\0065\a4\0009\b\a\0009\b5\b=\b \a9\b\a\0009\b6\b=\b7\a9\b\a\0009\b8\b=\b9\a9\b\a\0009\b:\b=\b;\a9\b\a\0009\b<\b=\b\"\a9\b\a\0009\b6\b=\b=\a=\a>\6=\6?\5=\5\25\4=\4@\0035\4A\0=\4B\0035\4C\0004\5\0\0=\5D\4=\4E\0034\4\0\0=\4F\0035\4G\0005\5H\0=\5I\0044\5\0\0=\5J\4=\4K\0035\4L\0005\5M\0=\5N\0045\5O\0005\6P\0005\aR\0005\bQ\0=\bS\a5\bT\0=\bU\a=\aJ\6=\6V\5=\5W\0045\5X\0=\5Y\4=\4Z\0035\4[\0005\5]\0009\6\3\0009\6\\\6=\6^\0059\6\3\0009\6_\6=\6`\0059\6\3\0009\6a\6=\6b\0059\6\3\0009\6c\6=\6d\5=\5\25\4=\4\3\0035\4e\0=\4f\0035\4g\0=\4\6\0035\4h\0=\4i\0035\4j\0=\4k\0035\4l\0005\5m\0=\5n\4=\4o\3B\1\2\1K\0\1\0\blog\ntypes\1\0\b\fprofile\1\bdev\1\15copy_paste\1\bgit\1\vconfig\1\fwatcher\1\ball\1\16diagnostics\1\1\0\2\venable\1\rtruncate\1\16live_filter\1\0\2\24always_show_folders\2\vprefix\15[FILTER]: \ntrash\1\0\2\20require_confirm\2\bcmd\14gio trash\1\0\4\vignore\2\venable\2\ftimeout\3ê\3\17show_on_dirs\2\24filesystem_watchers\1\0\2\19debounce_delay\0032\venable\2\nerror\14Error_alt\fwarning\16Warning_alt\tinfo\20Information_alt\thint\1\0\0\rHint_alt\1\0\3\venable\1\19debounce_delay\0032\17show_on_dirs\1\factions\16remove_file\1\0\1\17close_window\2\14open_file\18window_picker\fbuftype\1\3\0\0\rterminal\thelp\rfiletype\1\0\0\1\6\0\0\vnotify\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\2\vglobal\1\venable\2\1\0\1\25use_system_clipboard\2\ffilters\fexclude\vcustom\1\2\0\0\14.DS_Store\1\0\1\rdotfiles\1\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\16update_root\2\venable\2\23hijack_directories\1\0\2\14auto_open\2\venable\2\rrenderer\vglyphs\vfolder\17symlink_open\18SymlinkFolder\15empty_open\20EmptyFolderOpen\nempty\16EmptyFolder\topen\15FolderOpen\vFolder\1\0\2\17arrow_closed\5\15arrow_open\5\fignored\vIgnore\fdeleted\vRemove\14untracked\14Untracked\frenamed\vRename\runmerged\rUnmerged\vstaged\bAdd\runstaged\1\0\0\fMod_alt\rbookmark\rBookmark\fsymlink\fSymlink\fdefault\1\0\0\fDefault\tshow\1\0\4\bgit\2\17folder_arrow\1\vfolder\2\tfile\2\1\0\4\fpadding\6 \18symlink_arrow\n Ôïì \18git_placement\vbefore\18webdev_colors\2\19indent_markers\nicons\1\0\4\vcorner\t‚îî \tnone\a  \tedge\t‚îÇ \titem\t‚îÇ \1\0\1\venable\2\18special_files\1\6\0\0\15Cargo.toml\rMakefile\14README.md\14readme.md\19CMakeLists.txt\1\0\a\16group_empty\2\17add_trailing\1\22root_folder_label\17:.:s?.*?/..?\24symlink_destination\2\27highlight_opened_files\tnone\14full_name\1\18highlight_git\1\tview\nfloat\20open_win_config\1\0\6\brow\3\1\bcol\3\1\nwidth\3\30\vheight\3\30\rrelative\veditor\vborder\frounded\1\0\1\venable\1\1\0\t\25centralize_selection\1 preserve_window_proportions\1\21hide_root_folder\1\15signcolumn\byes\19relativenumber\1\vnumber\1\tside\tleft\nwidth\3\30\18adaptive_size\1\1\0\r\23sync_root_with_cwd\2\fsort_by\tname\20respect_buf_cwd\1\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\2\17hijack_netrw\2\18hijack_cursor\2\18disable_netrw\1\28create_in_closed_folder\1\25auto_reload_on_write\2\nsetup\14nvim-tree\25nvim_tree_show_icons\6g\bvim\aui\bgit\14documents\1\0\0\16diagnostics\bget\24modules.utils.icons\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oxocarbon.nvim"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/oxocarbon.nvim",
    url = "https://github.com/nyoom-engineering/oxocarbon.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nΩ\a\0\0\6\0-\0A5\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\3\0B\1\2\2=\1\3\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\5\0B\1\2\2=\1\5\0006\1\0\0'\3\6\0B\1\2\0029\1\a\0015\3\b\0009\4\3\0009\4\t\4=\4\n\0039\4\3\0009\4\v\4=\4\f\0035\4\r\0005\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\4=\4\30\0035\4\31\0=\4 \0035\4\"\0009\5\5\0009\5!\5=\5#\0049\5\5\0009\5$\5=\5%\0049\5\5\0009\5&\5=\5'\0049\5\5\0009\5(\5=\5)\0049\5\5\0009\5*\5=\5+\4=\4,\3B\1\2\1K\0\1\0\nsigns\nother\17Question_alt\16information\20Information_alt\thint\rHint_alt\fwarning\16Warning_alt\nerror\1\0\0\14Error_alt\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<C-t>\16open_vsplit\1\2\0\0\n<C-v>\15open_split\1\2\0\0\n<C-x>\tjump\1\3\0\0\t<CR>\n<TAB>\1\0\t\frefresh\6r\nclose\6q\tnext\6j\vcancel\n<ESC>\rprevious\6k\nhover\6K\19toggle_preview\6P\16toggle_mode\6m\fpreview\6p\16fold_closed\16ArrowClosed\14fold_open\14ArrowOpen\1\0\r\fpadding\2\nwidth\0032\vheight\3\n\14auto_fold\1\17auto_preview\2\15auto_close\1\14auto_open\1\17indent_lines\2\tmode\25document_diagnostics\25use_diagnostic_signs\1\rposition\vbottom\ngroup\2\nicons\2\nsetup\ftrouble\16diagnostics\1\0\0\aui\bget\24modules.utils.icons\frequire\0" },
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/Users/bitter/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nH\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\1K\0\1\0\nsetup\rtsserver\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nΩ\a\0\0\6\0-\0A5\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\3\0B\1\2\2=\1\3\0006\1\0\0'\3\1\0B\1\2\0029\1\2\1'\3\5\0B\1\2\2=\1\5\0006\1\0\0'\3\6\0B\1\2\0029\1\a\0015\3\b\0009\4\3\0009\4\t\4=\4\n\0039\4\3\0009\4\v\4=\4\f\0035\4\r\0005\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\4=\4\30\0035\4\31\0=\4 \0035\4\"\0009\5\5\0009\5!\5=\5#\0049\5\5\0009\5$\5=\5%\0049\5\5\0009\5&\5=\5'\0049\5\5\0009\5(\5=\5)\0049\5\5\0009\5*\5=\5+\4=\4,\3B\1\2\1K\0\1\0\nsigns\nother\17Question_alt\16information\20Information_alt\thint\rHint_alt\fwarning\16Warning_alt\nerror\1\0\0\14Error_alt\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<C-t>\16open_vsplit\1\2\0\0\n<C-v>\15open_split\1\2\0\0\n<C-x>\tjump\1\3\0\0\t<CR>\n<TAB>\1\0\t\frefresh\6r\nclose\6q\tnext\6j\vcancel\n<ESC>\rprevious\6k\nhover\6K\19toggle_preview\6P\16toggle_mode\6m\fpreview\6p\16fold_closed\16ArrowClosed\14fold_open\14ArrowOpen\1\0\r\fpadding\2\nwidth\0032\vheight\3\n\14auto_fold\1\17auto_preview\2\15auto_close\1\14auto_open\1\17indent_lines\2\tmode\25document_diagnostics\25use_diagnostic_signs\1\rposition\vbottom\ngroup\2\nicons\2\nsetup\ftrouble\16diagnostics\1\0\0\aui\bget\24modules.utils.icons\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'NvimTreeRefresh', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeRefresh', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeRefresh ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Copilot', function(cmdargs)
          require('packer.load')({'copilot.lua'}, { cmd = 'Copilot', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'copilot.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Copilot ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NvimTreeToggle', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NvimTreeOpen', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NvimTreeFindFile', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeFindFile', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeFindFile ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'NvimTreeFindFileToggle', function(cmdargs)
          require('packer.load')({'nvim-tree.lua'}, { cmd = 'NvimTreeFindFileToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-tree.lua'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('NvimTreeFindFileToggle ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'copilot.lua', 'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
