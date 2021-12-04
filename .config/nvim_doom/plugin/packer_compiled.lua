-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/pierre/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/pierre/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/pierre/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/pierre/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/pierre/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
  ["DAPInstall.nvim"] = {
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\1\2M\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  aniseed = {
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/aniseed",
    url = "https://github.com/Olical/aniseed"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\1\2E\0\1\2\0\4\0\t4\1\0\0007\1\1\0016\1\0\0017\1\2\1\6\1\3\0T\1\2€)\1\2\0H\1\2\0G\0\1\0\14dashboard\rfiletype\abo\bvimØ\5\1\0\5\0\r\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\v\0003\2\3\0001\3\4\0:\3\5\0022\3\5\0003\4\6\0;\4\1\0033\4\a\0;\4\2\0033\4\b\0;\4\3\0033\4\t\0;\4\4\3:\3\n\2:\2\f\1>\0\2\1G\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\20Plugins manager\15text_align\vcenter\rfiletype\vpacker\1\0\3\ttext\fSymbols\15text_align\vcenter\rfiletype\fOutline\1\0\3\ttext\fMinimap\15text_align\vcenter\rfiletype\fminimap\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\18custom_filter\0\1\0\18\rtab_size\3\16\22left_trunc_marker\bï‚¨\fsort_by\14directory\25enforce_regular_tabs\2\24show_tab_indicators\2\28show_buffer_close_icons\2\20separator_style\nthick\22buffer_close_icon\bâœ—\20max_name_length\3\16\15close_icon\bï€\22show_buffer_icons\2\24persist_buffer_sort\2\23right_trunc_marker\bï‚©\22max_prefix_length\3\15\27always_show_bufferline\1\20show_close_icon\1\19indicator_icon\bâ–Ž\18modified_icon\bâ—\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\1\2³\26\0\0\t\0;\0‚\0014\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0024\1\3\0007\1\4\0014\2\0\0%\3\6\0>\2\2\0027\2\a\2%\3\b\0$\2\3\2:\2\5\0014\1\3\0007\1\4\1%\2\n\0:\2\t\0014\1\3\0007\1\4\0013\2\15\0003\3\r\0003\4\f\0:\4\14\3:\3\16\0023\3\18\0003\4\17\0:\4\14\3:\3\19\0023\3\21\0003\4\20\0:\4\14\3:\3\22\0023\3\24\0003\4\23\0:\4\14\3:\3\25\0023\3\27\0003\4\26\0:\4\14\3:\3\28\0023\3\30\0003\4\29\0:\4\14\3:\3\31\0023\3!\0003\4 \0:\4\14\3:\3\4\2:\2\v\0014\1\3\0007\1\4\0012\2\3\0%\3#\0004\4\3\0007\4$\0047\4%\4%\5&\0004\6\3\0007\6$\0067\6'\0064\a\3\0007\a$\a7\a(\a4\b\3\0007\b\4\b7\b)\b>\a\2\0=\6\0\0=\4\1\2%\5*\0$\3\5\3;\3\1\2:\2\"\0017\1+\0007\1,\1\14\0\1\0T\1\4€4\1\3\0007\1\4\1'\2\1\0:\2-\0014\1\3\0007\1\4\0014\2\3\0007\2/\0027\3+\0007\3.\3>\2\2\2\15\0\2\0T\3\3€3\0020\0\14\0\2\0T\3\2€7\2+\0007\2.\2:\2.\0014\1\3\0007\0011\1%\0022\0007\3+\0007\0033\0037\0034\3$\2\3\2>\1\2\0014\1\3\0007\0011\1%\0025\0007\3+\0007\0033\0037\0036\3$\2\3\2>\1\2\0014\1\3\0007\0011\1%\0027\0007\3+\0007\0033\0037\0038\3$\2\3\2>\1\2\0014\1\3\0007\0011\1%\0029\0007\3+\0007\0033\0037\3:\3$\2\3\2>\1\2\1G\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\22\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  T                                                                               \16tbl_isempty\28dashboard_custom_header!dashboard_disable_statusline\23dashboard_statline\tdoom\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand\16h doom_nvim\1\2\0\0000ï€­  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000ï‘¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ï‡‚  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000ïœ¡  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ï€®  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ï…œ  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ï€ž  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\16load_config\21doom.core.config\frequire\0" },
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["doom-themes.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/doom-themes.nvim",
    url = "https://github.com/GustavoPrietoP/doom-themes.nvim"
  },
  ["format.nvim"] = {
    config = { "\27LJ\1\2N\0\1\4\1\1\0\4+\1\0\0%\2\0\0\16\3\0\0@\1\3\0\0À9stylua --config-path ~/.config/stylua/stylua.toml %sN\0\1\4\1\1\0\4+\1\0\0%\2\0\0\16\3\0\0@\1\3\0\0À9stylua --config-path ~/.config/stylua/stylua.toml %s$\0\1\4\1\1\0\4+\1\0\0%\2\0\0\16\3\0\0@\1\3\0\0À\15yapf -i %s¢\t\1\0\a\0005\0n4\0\0\0007\0\1\0004\1\2\0%\2\1\0>\1\2\0027\1\3\0013\2\a\0002\3\3\0003\4\5\0003\5\4\0:\5\6\4;\4\1\3:\3\b\0022\3\3\0003\4\n\0002\5\3\0001\6\t\0;\6\1\5:\5\6\4;\4\1\3:\3\v\0022\3\3\0003\4\r\0003\5\f\0:\5\6\4;\4\1\3:\3\14\0022\3\3\0003\4\16\0002\5\3\0001\6\15\0;\6\1\5:\5\6\4;\4\1\3:\3\17\0022\3\3\0003\4\19\0002\5\3\0001\6\18\0;\6\1\5:\5\6\4;\4\1\3:\3\20\0022\3\3\0003\4\22\0003\5\21\0:\5\6\4;\4\1\3:\3\23\0022\3\3\0003\4\25\0003\5\24\0:\5\6\4;\4\1\3:\3\26\0022\3\3\0003\4\28\0003\5\27\0:\5\6\4;\4\1\3:\3\29\0022\3\3\0003\4\31\0003\5\30\0:\5\6\4;\4\1\3:\3 \0022\3\3\0003\4\"\0003\5!\0:\5\6\4;\4\1\0033\4$\0003\5#\0:\5\6\4;\4\2\3:\3%\0022\3\3\0003\4'\0003\5&\0:\5\6\4;\4\1\3:\3(\0022\3\3\0003\4*\0003\5)\0:\5\6\4;\4\1\3:\3+\0022\3\3\0003\4-\0003\5,\0:\5\6\4;\4\1\3:\3.\0022\3\3\0003\0040\0003\5/\0:\5\6\4;\4\1\3:\0031\0022\3\3\0003\0043\0003\0052\0:\5\6\4;\4\1\3:\0034\2>\1\2\0010\0\0€G\0\1\0\tyaml\1\0\0\1\2\0\0\30prettier -w --parser yaml\ttoml\1\0\0\1\2\0\0\30prettier -w --parser toml\tjson\1\0\0\1\2\0\0\30prettier -w --parser json\tscss\1\0\0\1\2\0\0\30prettier -w --parser scss\bcss\1\0\0\1\2\0\0\29prettier -w --parser css\rmarkdown\1\0\3\16end_pattern\n^```$\vtarget\fcurrent\18start_pattern\16^```python$\1\2\0\0\fyapf -i\1\0\0\1\2\0\0\"prettier -w --parser markdown\thtml\1\0\0\1\2\0\0\30prettier -w --parser html\15typescript\1\0\0\1\2\0\0$prettier -w --parser typescript\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\vpython\1\0\0\0\blua\1\0\0\0\fvimwiki\1\0\2\16end_pattern\n^}}}$\18start_pattern\20^{{{javascript$\1\2\0\0\31prettier -w --parser babel\bvim\1\0\2\16end_pattern\n^EOF$\18start_pattern\17^lua << EOF$\0\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\frequire\vformat\vstring\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2G\0\0\2\1\2\0\b+\0\0\0007\0\0\0>\0\1\2\a\0\1\0T\1\2€)\1\2\0H\1\2\0G\0\1\0\6À\14DASHBOARD\24get_buffer_filetypeG\0\0\2\1\2\0\b+\0\0\0007\0\0\0>\0\1\2\6\0\1\0T\1\2€)\1\2\0H\1\2\0G\0\1\0\6À\14DASHBOARD\24get_buffer_filetype\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tâ–Š â\4\0\0\4\1#\0r3\0\1\0+\1\0\0%\2\0\0>\1\2\2>\1\1\2:\1\2\0+\1\0\0%\2\3\0>\1\2\2>\1\1\2:\1\4\0+\1\0\0%\2\5\0>\1\2\2>\1\1\2:\1\6\0+\1\0\0%\2\5\0>\1\2\2>\1\1\2:\1\a\0+\1\0\0%\2\5\0>\1\2\2>\1\1\2:\1\b\0+\1\0\0%\2\t\0>\1\2\2>\1\1\2:\1\n\0+\1\0\0%\2\0\0>\1\2\2>\1\1\2:\1\v\0+\1\0\0%\2\f\0>\1\2\2>\1\1\2:\1\r\0+\1\0\0%\2\f\0>\1\2\2>\1\1\2:\1\14\0+\1\0\0%\2\f\0>\1\2\2>\1\1\2:\1\15\0+\1\0\0%\2\16\0>\1\2\2>\1\1\2:\1\17\0+\1\0\0%\2\t\0>\1\2\2>\1\1\2:\1\18\0+\1\0\0%\2\t\0>\1\2\2>\1\1\2:\1\19\0+\1\0\0%\2\0\0>\1\2\2>\1\1\2:\1\20\0+\1\0\0%\2\0\0>\1\2\2>\1\1\2:\1\21\0+\1\0\0%\2\22\0>\1\2\2>\1\1\2:\1\23\0+\1\0\0%\2\22\0>\1\2\2>\1\1\2:\1\24\0+\1\0\0%\2\22\0>\1\2\2>\1\1\2:\1\25\0+\1\0\0%\2\0\0>\1\2\2>\1\1\2:\1\26\0+\1\0\0%\2\0\0>\1\2\2>\1\1\2:\1\27\0004\1\28\0007\1\29\0017\1\30\1%\2\31\0004\3\28\0007\3 \0037\3!\3>\3\1\0026\3\3\0$\2\3\2>\1\2\1%\1\"\0H\1\2\0\2À\5\tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\breds\0\0\6\0\b\0\0164\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\0024\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\0024\2\5\0007\2\6\2%\3\a\0\16\4\0\0\16\5\1\0@\2\4\0\16%3d : %2d  \vformat\vstring\bcol\6.\tline\afn\bvimÒ\1\0\0\5\1\v\0\31+\0\0\0007\0\0\0>\0\1\2\6\0\1\0T\0\r€%\0\2\0+\1\0\0007\1\0\1>\1\1\2\16\2\1\0007\1\3\1%\3\4\0004\4\5\0007\4\6\4>\1\4\2$\0\1\0H\0\2\0T\0\f€%\0\a\0004\1\b\0007\1\t\0017\1\n\1\16\2\1\0007\1\3\1%\3\4\0004\4\5\0007\4\6\4>\1\4\2$\0\1\0H\0\2\0G\0\1\0\5À\rfiletype\abo\bvim\tï \nupper\vstring\b^%l\tgsub\tî˜ \18No Active Lsp\19get_lsp_clientJ\0\0\2\1\2\0\n3\0\0\0+\1\0\0007\1\1\0016\1\1\0\15\0\1\0T\2\2€)\1\1\0H\1\2\0)\1\2\0H\1\2\0\3À\rfiletype\1\0\2\5\2\14dashboard\2\21\0\0\1\0\1\0\2%\0\0\0H\0\2\0\n ïž¡ \19\0\0\1\0\1\0\2%\0\0\0H\0\2\0\b   7\0\0\3\1\3\0\6%\0\0\0+\1\0\0007\1\1\1%\2\2\0$\0\2\0H\0\2\0\0À\6 \17doom_version\vDOOM v\16\0\0\1\0\1\0\2%\0\0\0H\0\2\0\5\16\0\0\1\0\1\0\2%\0\0\0H\0\2\0\5\16\0\0\1\0\1\0\2%\0\0\0H\0\2\0\5¸\28\1\0\17\0\1«\0044\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\1\3\1>\1\1\0024\2\0\0%\3\4\0>\2\2\0027\2\5\0024\3\6\0007\3\a\0034\4\0\0%\5\b\0>\4\2\0024\5\0\0%\6\t\0>\5\2\0024\6\0\0%\a\n\0>\6\2\0024\a\0\0%\b\v\0>\a\2\0027\b\f\0043\t\14\0:\t\r\0041\t\15\0001\n\16\0007\v\17\b3\f\24\0003\r\19\0001\14\18\0:\14\20\r2\14\3\0\16\15\2\0%\16\21\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\r\25\f;\f\1\v7\v\17\b3\f\30\0003\r\27\0001\14\26\0:\14\20\r3\14\29\0\16\15\2\0%\16\28\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\2;\15\2\14:\14\23\r:\r\31\f;\f\2\v7\v\17\b3\f%\0003\r \0007\14!\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r2\14\3\0\16\15\2\0%\16#\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\r&\f;\f\3\v7\v\17\b3\f*\0003\r'\0007\14!\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r2\14\3\0004\15\0\0%\16(\0>\15\2\0027\15)\15;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\r+\f;\f\4\v7\v\17\b3\f.\0003\r,\0007\14!\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r3\14-\0\16\15\2\0%\16#\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\2;\15\2\14:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\r/\f;\f\5\v7\v\17\b3\f3\0003\r1\0001\0140\0:\14\20\r:\n\"\r2\14\3\0\16\15\2\0%\0162\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\r4\f;\f\6\v7\v\17\b3\f6\0003\r5\0:\n\"\r2\14\3\0\16\15\2\0%\0162\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\r7\f;\f\a\v7\v\17\b3\f=\0003\r8\0:\n\"\r7\0149\0017\14:\14%\15;\0$\14\15\14:\14<\r2\14\3\0\16\15\2\0%\16\28\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\r>\f;\f\b\v7\v\17\b3\fB\0003\r?\0:\n\"\r7\0149\0017\14@\14%\15;\0$\14\15\14:\14<\r2\14\3\0\16\15\2\0%\16A\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\rC\f;\f\t\v7\v\17\b3\fF\0003\rD\0:\n\"\r7\0149\0017\14E\14%\15;\0$\14\15\14:\14<\r2\14\3\0\16\15\2\0%\16\21\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\rG\f;\f\n\v7\vH\b3\fK\0003\rI\0007\14J\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r2\14\3\0\16\15\2\0%\16#\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\rL\f;\f\1\v7\vH\b3\fN\0003\rM\0007\14J\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r2\14\3\0\16\15\2\0%\16#\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\rO\f;\f\2\v7\vH\b3\fS\0003\rQ\0001\14P\0:\14\20\r1\14R\0:\14\"\r2\14\3\0\16\15\2\0%\16\21\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\rT\f;\f\3\v7\vH\b3\fX\0003\rV\0001\14U\0:\14\20\r7\14W\a:\14\"\r2\14\3\0\16\15\2\0%\16\28\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\rY\f;\f\4\v7\vH\b3\f]\0003\rZ\0007\14W\a:\14\"\r3\14\\\0\16\15\2\0%\16[\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\2;\15\2\14:\14\23\r:\r^\f;\f\5\v7\vH\b3\fa\0003\r`\0001\14_\0:\14\20\r:\n\"\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\rb\f;\f\6\v7\vH\b3\fd\0003\rc\0007\14J\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r2\14\3\0\16\15\2\0%\16[\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\re\f;\f\a\v7\vH\b3\fg\0003\rf\0007\14J\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r2\14\3\0\16\15\2\0%\16A\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\rh\f;\f\b\v7\vH\b3\fj\0003\ri\0007\14J\a\15\0\14\0T\15\1€\16\14\n\0:\14\"\r2\14\3\0\16\15\2\0%\16\28\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\rk\f;\f\t\v\15\0\t\0T\v\28€7\vH\b3\fo\0003\rm\0001\14l\0:\14\20\r:\t\"\r3\14n\0\16\15\2\0%\16\21\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\2;\15\2\14:\14\23\r2\14\3\0\16\15\2\0%\16\22\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14$\r:\rp\f;\f\n\v7\vH\b3\fs\0003\rr\0001\14q\0:\14\20\r2\14\3\0\16\15\2\0%\16\21\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\rt\f;\f\v\v7\vu\b3\fx\0003\rw\0001\14v\0:\14\20\r2\14\3\0\16\15\2\0%\16\21\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\ry\f;\f\1\v7\vu\b2\f\0\0;\f\2\v7\vz\b2\f\0\0;\f\1\v7\vz\b3\f}\0003\r|\0001\14{\0:\14\20\r2\14\3\0\16\15\2\0%\16\21\0>\15\2\2;\15\1\14\16\15\2\0%\16\22\0>\15\2\0<\15\0\0:\14\23\r:\r~\f;\f\2\v0\0\0€G\0\1\0\22ShortRainbowRight\1\0\0\1\0\0\0\21short_line_right\21ShortRainbowLeft\1\0\0\1\0\0\0\20short_line_left\17RainbowRight\1\0\0\1\0\0\0\16DoomVersion\1\0\0\1\4\0\0\0\0\tbold\1\0\1\14separator\a  \0\15DiffRemove\1\0\0\1\0\2\ticon\tï‘˜ \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\tï‘™ \rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\tï‘— \rprovider\fDiffAdd\18DiffSeparator\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\24check_git_workspace\1\0\1\14separator\6 \0\28ShowLspClientOrFileType\1\0\0\0\1\0\1\14separator\a  \0\15FileEncode\1\0\0\1\0\2\14separator\6 \rprovider\15FileEncode\15FileFormat\1\0\0\18hide_in_width\1\0\2\14separator\a  \rprovider\15FileFormat\nright\19DiagnosticInfo\1\0\0\rlsp_hint\1\0\1\rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\vorange\16lsp_warning\1\0\1\rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ticon\6 \14lsp_error\tdoom\1\0\1\rprovider\20DiagnosticError\16LinePercent\1\0\0\1\0\2\14separator\a  \rprovider\16LinePercent\rLineInfo\1\0\0\vfg_alt\1\0\0\0\rFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\2\14separator\6 \rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\24separator_highlight\afg\14condition\21buffer_not_empty\1\0\2\14separator\6 \rprovider\rFileSize\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\16RainbowLeft\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\0\0\1\6\0\0\rNvimTree\vpacker\fminimap\fOutline\15toggleterm\20short_line_list\fsection\25galaxyline.condition\31galaxyline.provider_buffer\28galaxyline.provider_lsp\15galaxyline\abo\bvim\14get_color.doom.modules.config.doom-eviline-palettes\16load_config\21doom.core.config\15doom.utils\frequire\5€€À™\4\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2ö\n\0\0\4\0\28\0\0314\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\14\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0023\3\f\0:\3\r\2:\2\15\0013\2\16\0003\3\17\0:\3\18\0023\3\19\0:\3\20\2:\2\21\0013\2\22\0:\2\23\0013\2\24\0:\2\25\0013\2\26\0:\2\27\1>\0\2\1G\0\1\0\14diff_opts\1\0\1\rinternal\2\28current_line_blame_opts\1\0\2\ndelay\3è\a\18virt_text_pos\beol\17watch_gitdir\1\0\2\rinterval\3è\a\17follow_files\2\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\n\fnoremap\2\17n <leader>gh2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gb0<cmd>lua require\"gitsigns\".blame_line()<CR>\tx ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\17n <leader>gS0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\vbuffer\2\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\nsigns\1\0\5\20update_debounce\3d\vlinehl\1\nnumhl\1\18sign_priority\3\6\23current_line_blame\1\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\bâ€¾\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\bâ”‚\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\bâ”‚\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14on_attach\18lsp_signature\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    config = { "\27LJ\1\0028\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\vneogit\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2ã\1\0\0\5\0\a\0\0164\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\0013\2\6\0\16\3\0\0%\4\5\0>\3\2\2\15\0\3\0T\4\0€>\1\2\1G\0\1\0\1\0\4\21enable_moveright\2\rcheck_ts\2\30enable_check_bracket_line\2\22enable_afterquote\2\15treesitter\nsetup\19nvim-autopairs\23is_plugin_disabled\24doom.core.functions\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2o\0\0\3\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\0013\2\6\0:\2\a\1>\0\2\1G\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after = { "lsp_signature.nvim" },
    after_files = { "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvim£\1\0\0\5\0\b\2\0304\0\0\0007\0\1\0007\0\2\0%\1\3\0>\0\2\2\21\0\0\0\b\0\1\0T\1\16€4\1\0\0007\1\1\0017\1\4\1%\2\3\0>\1\2\2\16\2\1\0007\1\5\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\6\1%\3\a\0>\1\3\2\15\0\1\0T\2\3€)\1\2\0H\1\2\0T\1\2€)\1\1\0H\1\2\0G\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0•\1\0\0\2\2\6\1\0234\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\f€+\0\1\0>\0\1\2\15\0\0\0T\1\4€+\0\0\0%\1\4\0@\0\2\0T\0\4€4\0\0\0007\0\1\0007\0\5\0@\0\1\0G\0\1\0\0À\1À\19compe#complete\n<Tab>\n<C-n>\15pumvisible\afn\bvim\2b\0\0\2\1\5\1\0144\0\0\0007\0\1\0007\0\2\0>\0\1\2\t\0\0\0T\0\4€+\0\0\0%\1\3\0@\0\2\0T\0\3€+\0\0\0%\1\4\0@\0\2\0G\0\1\0\0À\f<S-Tab>\n<C-p>\15pumvisible\afn\bvim\2¨\5\1\0\a\0\26\00024\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\0011\0\6\0001\1\a\0004\2\b\0001\3\n\0:\3\t\0024\2\b\0001\3\f\0:\3\v\0024\2\r\0007\2\14\0027\2\15\2%\3\16\0%\4\17\0%\5\18\0003\6\19\0>\2\5\0014\2\r\0007\2\14\0027\2\15\2%\3\20\0%\4\17\0%\5\18\0003\6\21\0>\2\5\0014\2\r\0007\2\14\0027\2\15\2%\3\16\0%\4\22\0%\5\23\0003\6\24\0>\2\5\0014\2\r\0007\2\14\0027\2\15\2%\3\20\0%\4\22\0%\5\23\0003\6\25\0>\2\5\0010\0\0€G\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<S-Tab>\1\0\1\texpr\2\6s\1\0\1\texpr\2\25v:lua.tab_complete()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\19s_tab_complete\0\17tab_complete\a_G\0\0\vsource\1\0\f\nneorg\2\rnvim_lsp\2\ttags\2\nvsnip\1\15treesitter\2\tpath\2\18snippets_nvim\1\rnvim_lua\2\nspell\1\vbuffer\2\tcalc\1\fluasnip\2\1\0\f\17autocomplete\2\19source_timeout\3È\1\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3\3\19max_menu_width\3d\19max_kind_width\3d\15min_length\3\4\18throttle_time\3P\18documentation\2\nsetup\ncompe\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-dap"] = {
    after = { "DAPInstall.nvim", "nvim-dap-ui" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\1\2\30\0\0\1\1\1\0\4+\0\0\0007\0\0\0>\0\1\1G\0\1\0\1À\topen\31\0\0\1\1\1\0\4+\0\0\0007\0\0\0>\0\1\1G\0\1\0\1À\nclose\31\0\0\1\1\1\0\4+\0\0\0007\0\0\0>\0\1\1G\0\1\0\1À\nclose\4\1\0\6\0\30\0*4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0007\2\4\0027\2\5\0021\3\a\0:\3\6\0027\2\3\0007\2\b\0027\2\t\0021\3\n\0:\3\6\0027\2\3\0007\2\b\0027\2\v\0021\3\f\0:\3\6\0027\2\r\0013\3\15\0003\4\14\0:\4\16\0033\4\18\0003\5\17\0:\5\19\4:\4\20\0033\4\22\0003\5\21\0:\5\23\4:\4\24\0033\4\26\0003\5\25\0:\5\23\4:\4\27\0033\4\28\0:\4\29\3>\2\2\0010\0\0€G\0\1\0\rfloating\1\0\0\ttray\1\0\2\tsize\3\n\rposition\vbottom\1\2\0\0\trepl\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\5\0\0\vscopes\16breakpoints\vstacks\fwatches\rmappings\vexpand\1\0\4\topen\6o\trepl\6r\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\bâ–¸\rexpanded\bâ–¾\nsetup\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\ndapui\bdap\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    after = { "nvim-compe", "nvim-lspinstall" },
    config = { "\27LJ\1\2Ã\1\0\3\a\0\t\0\30\16\4\0\0007\3\0\0%\5\1\0>\3\3\2\15\0\3\0T\4\1€G\0\1\0004\3\2\0007\3\3\0037\3\4\0037\3\5\3\5\1\3\0T\3\6€4\3\2\0007\3\6\0037\3\a\3\16\4\0\0>\3\2\1T\3\n€4\3\2\0007\3\6\0037\3\b\0032\4\3\0002\5\3\0;\0\1\5;\5\1\4)\5\2\0002\6\0\0>\3\4\1G\0\1\0\14nvim_echo\21nvim_err_writeln\bapi\nERROR\vlevels\blog\bvim\14exit code\nmatch½\f\1\0\n\0/\0V4\0\0\0007\0\1\0004\1\0\0007\1\2\0014\2\3\0%\3\4\0>\2\2\0027\2\5\2>\2\1\0027\3\6\0017\3\a\3>\3\1\0027\4\b\0037\4\t\0047\4\n\4)\5\2\0:\5\v\0047\4\f\0%\5\r\0003\6\14\0007\a\15\0027\a\16\a:\a\17\6>\4\3\0017\4\f\0%\5\18\0003\6\19\0007\a\15\0027\a\20\a:\a\17\6>\4\3\0017\4\f\0%\5\21\0003\6\22\0007\a\15\0027\a\23\a:\a\17\6>\4\3\0017\4\f\0%\5\24\0003\6\25\0007\a\15\0027\a\26\a:\a\17\6>\4\3\0017\4\27\0017\5\29\0017\6\30\0017\6\31\0063\a#\0003\b!\0007\t\15\0027\t \t:\t\"\b:\b$\a>\5\3\2:\5\28\0047\4\27\0014\5\0\0007\5\2\0057\5\29\0054\6\0\0007\6\2\0067\6\27\0067\6&\0063\a'\0>\5\3\2:\5%\0047\4\27\0014\5\0\0007\5\2\0057\5\29\0054\6\0\0007\6\2\0067\6\27\0067\6)\0063\a*\0>\5\3\2:\5(\0047\4\6\0013\5,\0:\5+\0044\4\0\0001\5.\0:\5-\4G\0\1\0\0\vnotify\1\26\0\0\18 ï’ž  (Text) \19 ïš¦  (Method)\21 ïž”  (Function)\24 ï¥  (Constructor)\18 ï´²  (Field)\21[îœ–] (Variable)\18 ï –  (Class)\22 ï°®  (Interface)\19 ï™¨  (Module)\20 ïª¶ (Property)\17 ï‘µ  (Unit)\18 ï¢Ÿ  (Value)\16 ï©— (Enum)\20 ï Š  (Keyword)\20 ïƒ„  (Snippet)\18 ï£—  (Color)\17 ïœ“  (File)\22 ïœœ  (Reference)\19 ïŠ  (Folder)\23 ï…  (EnumMember)\21 ï²€  (Constant)\19 ï³¤  (Struct)\18 ïƒ§  (Event)\21 ï—«  (Operator)\26 ïžƒ  (TypeParameter)\23CompletionItemKind\1\0\1\vborder\vsingle\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\vsingle\nhover\23textDocument/hover\17virtual_text\1\0\2\14underline\1\nsigns\1\vprefix\1\0\0\21lsp_virtual_text\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\20lsp_information\1\0\2\vtexthl\"LspDiagnosticsSignInformation\nnumhl\"LspDiagnosticsSignInformation\"LspDiagnosticsSignInformation\rlsp_hint\1\0\2\vtexthl\27LspDiagnosticsSignHint\nnumhl\27LspDiagnosticsSignHint\27LspDiagnosticsSignHint\16lsp_warning\1\0\2\vtexthl\30LspDiagnosticsSignWarning\nnumhl\30LspDiagnosticsSignWarning\30LspDiagnosticsSignWarning\ttext\14lsp_error\tdoom\1\0\2\vtexthl\28LspDiagnosticsSignError\nnumhl\28LspDiagnosticsSignError\28LspDiagnosticsSignError\16sign_define\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\16load_config\21doom.core.config\frequire\blsp\afn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { '\27LJ\1\2î\3\0\0\14\3\18\0?+\0\0\0007\0\0\0>\0\1\2+\1\0\0007\1\1\1>\1\1\0024\2\2\0%\3\3\0>\2\2\0027\2\4\2>\2\1\0027\3\5\0024\4\6\0\16\5\3\0>\4\2\4T\a,€\16\t\b\0\16\v\b\0007\n\a\b%\f\b\0%\r\t\0>\n\4\2\16\v\n\0007\n\a\n%\f\n\0%\r\t\0>\n\4\2\16\b\n\0\16\v\t\0007\n\v\t%\f\f\0>\n\3\2\15\0\n\0T\v\26€+\n\1\0007\n\r\n\16\v\0\0\16\f\b\0>\n\3\2\14\0\n\0T\n\19€+\n\1\0007\n\r\n\16\v\1\0\16\f\b\0>\n\3\2\15\0\n\0T\v\5€+\n\0\0007\n\14\n\16\v\b\0>\n\2\1T\n\a€+\n\2\0007\n\15\n%\v\16\0\16\f\b\0%\r\17\0$\v\r\v>\n\2\1A\a\3\3N\aÒG\0\1\0\4À\1À\0À; does not have a server, please remove the "+lsp" flag\18The language \twarn\19install_server\14has_value\n%+lsp\tfind\15%s+%+debug\5\r%s+%+lsp\tgsub\vipairs\nlangs\16load_doomrc\28doom.core.config.doomrc\frequire\22available_servers\22installed_servers¤\1\0\0\b\2\6\0\0254\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0024\1\3\0\16\2\0\0>\1\2\4D\4\r€\a\5\4\0T\6\6€+\6\0\0007\6\4\0067\6\5\6+\a\1\0>\6\2\1T\6\5€+\6\0\0006\6\5\0067\6\5\0062\a\0\0>\6\2\1B\4\3\3N\4ñG\0\1\0\2À\3À\nsetup\blua\npairs\22installed_servers\15lspinstall\frequire5\0\0\2\1\3\0\a+\0\0\0>\0\1\0014\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\6À\fbufdo e\bcmd\bvimÃ\2\1\0\t\0\19\0)4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0024\2\0\0%\3\3\0>\2\2\0024\3\0\0%\4\4\0>\3\2\0027\3\5\0033\4\r\0003\5\v\0003\6\t\0003\a\a\0003\b\6\0:\b\b\a:\a\n\6:\6\f\5:\5\3\4>\3\2\0024\4\0\0%\5\14\0>\4\2\0027\5\5\4>\5\1\0011\5\15\0\16\6\5\0>\6\1\0011\6\16\0\16\a\6\0>\a\1\0014\a\0\0%\b\14\0>\a\2\0021\b\18\0:\b\17\a0\0\0€G\0\1\0\0\22post_install_hook\0\0\15lspinstall\1\0\0\rsettings\1\0\0\bLua\1\0\0\14workspace\1\0\0\1\0\1\20preloadFileSize\3È\1\nsetup\flua-dev\14lspconfig\15doom.utils\24doom.extras.logging\frequire\0' },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall",
    url = "https://github.com/kabouzeid/nvim-lspinstall"
  },
  ["nvim-mapper"] = {
    config = { "\27LJ\1\2Å\1\0\0\b\0\v\0\0224\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\1\0>\1\2\0027\1\3\0014\2\0\0%\3\4\0>\2\2\0027\2\5\0023\3\6\0004\4\a\0007\4\b\4%\5\t\0\16\6\0\0\16\a\1\0>\4\4\2:\4\n\3>\2\2\1G\0\1\0\16search_path\f%s%slua\vformat\vstring\1\0\1\vno_map\1\nsetup\16nvim-mapper\bsep\14doom_root\21doom.core.system\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-mapper",
    url = "https://github.com/lazytanuki/nvim-mapper"
  },
  ["nvim-tree-docs"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-tree-docs",
    url = "https://github.com/nvim-treesitter/nvim-tree-docs"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeClipboard", "NvimTreeClose", "NvimTreeFindFile", "NvimTreeOpen", "NvimTreeRefresh", "NvimTreeToggle" },
    config = { "\27LJ\1\2÷\21\0\0\n\0z\0–\0024\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0024\1\0\0%\2\3\0>\1\2\0027\1\4\0014\2\5\0007\2\6\0023\3\b\0:\3\a\0024\2\5\0007\2\6\2'\3\1\0:\3\t\0024\2\5\0007\2\6\0027\3\v\0007\3\f\3:\3\n\0024\2\5\0007\2\6\2'\3\1\0:\3\r\0024\2\5\0007\2\6\2'\3\1\0:\3\14\0024\2\5\0007\2\6\2%\3\16\0:\3\15\0024\2\5\0007\2\6\2'\3\1\0:\3\17\0024\2\5\0007\2\6\2'\3\1\0:\3\18\0024\2\5\0007\2\6\2'\3ô\1:\3\19\0024\2\5\0007\2\6\0023\3\22\0003\4\21\0:\4\23\0033\4\24\0:\4\25\3:\3\20\0024\2\5\0007\2\6\0023\3\27\0:\3\26\0024\2\5\0007\2\6\0023\3\29\0:\3\28\0024\2\5\0007\2\6\0023\3\31\0003\4 \0:\4!\0033\4\"\0:\4#\3:\3\30\0024\2\0\0%\3$\0>\2\2\0027\2%\0023\3&\0002\4\0\0:\4'\0033\4+\0004\5\0\0%\6(\0>\5\2\0027\5)\5%\6*\0>\5\2\2\15\0\5\0T\6\0€3\5-\0007\6\v\0007\6,\6:\6.\0057\6\v\0007\6/\6:\0060\0057\6\v\0007\0061\6:\0062\0057\6\v\0007\0063\6:\0064\5:\0055\4:\0046\0033\0047\0002\5\0\0:\0058\4:\0049\0033\4:\0002\5\0\0:\5;\4:\4<\0033\4>\0007\5\v\0007\5=\5:\5?\0047\5\v\0007\5@\5\15\0\5\0T\6\2€%\5A\0T\6\1€%\5B\0:\5C\0043\5D\0002\6\24\0003\aF\0003\bE\0:\bG\a\16\b\1\0%\tH\0>\b\2\2:\bI\a;\a\1\0063\aK\0003\bJ\0:\bG\a\16\b\1\0%\tL\0>\b\2\2:\bI\a;\a\2\0063\aM\0\16\b\1\0%\tN\0>\b\2\2:\bI\a;\a\3\0063\aO\0\16\b\1\0%\tP\0>\b\2\2:\bI\a;\a\4\0063\aQ\0\16\b\1\0%\tR\0>\b\2\2:\bI\a;\a\5\0063\aS\0\16\b\1\0%\tT\0>\b\2\2:\bI\a;\a\6\0063\aU\0\16\b\1\0%\tT\0>\b\2\2:\bI\a;\a\a\0063\aV\0\16\b\1\0%\tW\0>\b\2\2:\bI\a;\a\b\0063\aX\0\16\b\1\0%\tY\0>\b\2\2:\bI\a;\a\t\0063\aZ\0\16\b\1\0%\t[\0>\b\2\2:\bI\a;\a\n\0063\a\\\0\16\b\1\0%\t]\0>\b\2\2:\bI\a;\a\v\0063\a^\0\16\b\1\0%\t_\0>\b\2\2:\bI\a;\a\f\0063\a`\0\16\b\1\0%\ta\0>\b\2\2:\bI\a;\a\r\0063\ab\0\16\b\1\0%\tc\0>\b\2\2:\bI\a;\a\14\0063\ad\0\16\b\1\0%\te\0>\b\2\2:\bI\a;\a\15\0063\af\0\16\b\1\0%\tg\0>\b\2\2:\bI\a;\a\16\0063\ah\0\16\b\1\0%\ti\0>\b\2\2:\bI\a;\a\17\0063\aj\0\16\b\1\0%\tk\0>\b\2\2:\bI\a;\a\18\0063\al\0\16\b\1\0%\tm\0>\b\2\2:\bI\a;\a\19\0063\an\0\16\b\1\0%\to\0>\b\2\2:\bI\a;\a\20\0063\ap\0\16\b\1\0%\tq\0>\b\2\2:\bI\a;\a\21\0063\ar\0\16\b\1\0%\ts\0>\b\2\2:\bI\a;\a\22\0063\at\0\16\b\1\0%\tu\0>\b\2\2:\bI\a;\a\23\6:\6v\5:\5w\4:\4x\3>\2\2\0014\2\5\0007\2y\0024\3\0\0%\4$\0>\3\2\0027\3]\3'\4\25\0>\2\3\1G\0\1\0\rdefer_fn\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\4\0\0\t<CR>\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\3\0\0\6o\18<2-LeftMouse>\1\0\1\16custom_only\1\tside\tleft\nright\19explorer_right\nwidth\1\0\1\16auto_resize\2\18sidebar_width\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\16diagnostics\nicons\nerror\14lsp_error\fwarning\16lsp_warning\tinfo\20lsp_information\thint\1\0\0\rlsp_hint\1\0\1\venable\2\blsp\23is_plugin_disabled\24doom.core.functions\23ignore_ft_on_setup\1\0\a\15update_cwd\2\16open_on_tab\2\15auto_close\1\18open_on_setup\1\18disable_netrw\1\18hijack_cursor\2\17hijack_netrw\2\nsetup\14nvim-tree\vfolder\1\0\6\fdefault\bî—¿\15empty_open\bï„•\topen\bî—¾\nempty\bï„”\fsymlink\bï’‚\17symlink_open\bî—¾\bgit\1\0\5\runstaged\bâœ—\14untracked\bâ˜…\runmerged\bîœ§\frenamed\bâžœ\vstaged\bâœ“\1\0\2\fdefault\bî˜’\fsymlink\bï’\20nvim_tree_icons\1\0\4\ffolders\3\1\nfiles\3\1\bgit\3\1\18folder_arrows\3\0\25nvim_tree_show_icons\1\0\3\rMAKEFILE\3\1\rMakefile\3\1\14README.md\3\1\28nvim_tree_special_files\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\26nvim_tree_group_empty\27nvim_tree_add_trailing\a:~#nvim_tree_root_folder_modifier\24nvim_tree_gitignore\21nvim_tree_git_hl\16show_hidden\tdoom\28nvim_tree_hide_dotfiles\29nvim_tree_indent_markers\1\5\0\0\t.git\17node_modules\v.cache\16__pycache__\21nvim_tree_ignore\6g\bvim\23nvim_tree_callback\21nvim-tree.config\16load_config\21doom.core.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-context-commentstring", "nvim-tree-docs", "nvim-ts-autotag" },
    config = { "\27LJ\1\2°\2\0\1\v\1\r\00052\1\0\0004\2\0\0\16\3\0\0>\2\2\4T\5\"€\a\6\1\0T\a\16€4\a\2\0007\a\3\a\16\b\1\0%\t\4\0>\a\3\0014\a\2\0007\a\3\a\16\b\1\0%\t\5\0>\a\3\0014\a\2\0007\a\3\a\16\b\1\0%\t\6\0>\a\3\1T\a\16€\16\b\6\0007\a\a\6%\t\b\0%\n\t\0>\a\4\2\16\b\a\0007\a\a\a%\t\n\0%\n\t\0>\a\4\2\16\6\a\0004\a\2\0007\a\3\a\16\b\1\0\16\t\6\0>\a\3\1A\5\3\3N\5Ü+\2\0\0\16\3\1\0%\4\v\0>\2\3\2\15\0\2\0T\3\5€4\2\2\0007\2\3\2\16\3\1\0%\4\f\0>\2\3\1H\1\2\0\0À\btsx\15typescript\15%s+%+debug\5\r%s+%+lsp\tgsub\ttoml\tyaml\tjson\vinsert\ntable\vconfig\vipairsž\a\1\0\n\0*\0H4\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\1>\1\1\0024\2\0\0%\3\5\0>\2\2\0021\3\6\0004\4\0\0%\5\a\0>\4\2\0027\4\b\4>\4\1\0023\5\r\0003\6\n\0003\a\v\0:\a\f\6:\6\14\5:\5\t\0044\5\15\0\15\0\5\0T\6\t€4\5\15\0007\5\16\5\15\0\5\0T\6\5€4\5\17\0007\5\18\0057\6\19\1%\a\t\0>\5\3\0014\5\0\0%\6\20\0>\5\2\0023\6\22\0:\6\21\0054\5\0\0%\6\23\0>\5\2\0027\5\24\0053\6\25\0\16\a\3\0007\b\19\1>\a\2\2:\a\26\0063\a\27\0:\a\28\0063\a\31\0007\b\29\2%\t\30\0>\b\2\2\15\0\b\0T\t\0€:\a\30\0063\a \0:\a!\0063\a\"\0:\a#\0063\a$\0:\a%\0063\a&\0003\b'\0:\b(\a:\a)\6>\5\2\0010\0\0€G\0\1\0\fautotag\14filetypes\1\t\0\0\thtml\15javascript\20javascriptreact\15typescript\20typescriptreact\vsvelte\bvue\rmarkdown\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\14tree_docs\1\0\1\venable\2\vindent\1\0\1\venable\2\1\0\1\venable\2\14autopairs\23is_plugin_disabled\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\nsetup\28nvim-treesitter.configs\1\2\0\0\bgcc\14compilers\28nvim-treesitter.install\nlangs\vinsert\ntable\nneorg\19packer_plugins\17install_info\1\0\0\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\vbranch\tmain\burl3https://github.com/nvim-neorg/tree-sitter-norg\tnorg\23get_parser_configs\28nvim-treesitter.parsers\0\24doom.core.functions\16load_doomrc\28doom.core.config.doomrc\14has_value\15doom.utils\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\1\2ƒ\1\0\0\4\0\n\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0>\2\2\2%\3\a\0$\2\3\2:\2\t\1>\0\2\1G\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0" },
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["range-highlight.nvim"] = {
    config = { "\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\20range-highlight\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/range-highlight.nvim",
    url = "https://github.com/winston0410/range-highlight.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
    config = { "\27LJ\1\2é\2\0\0\4\0\15\0\0224\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0024\1\3\0007\1\4\0013\2\6\0007\3\a\0007\3\b\3\15\0\3\0T\4\2€%\3\t\0T\4\1€%\3\n\0:\3\v\0023\3\f\0:\3\r\0022\3\0\0:\3\14\2:\2\5\1G\0\1\0\18lsp_blacklist\fkeymaps\1\0\6\17code_actions\6a\18rename_symbol\6r\17hover_symbol\14<C-space>\18goto_location\t<CR>\19focus_location\6o\nclose\n<Esc>\rposition\nright\tleft\19explorer_right\tdoom\1\0\2\16show_guides\2\27highlight_hovered_item\2\20symbols_outline\6g\bvim\16load_config\21doom.core.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\1\2†\v\0\0\t\0008\0\\4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\0003\0034\0003\4\5\0003\5\4\0:\5\6\0043\5\a\0003\6\b\0:\6\t\0053\6\n\0:\6\v\5:\5\f\0044\5\0\0%\6\r\0>\5\2\0027\5\14\5:\5\15\0043\5\16\0:\5\17\0044\5\0\0%\6\r\0>\5\2\0027\5\18\5:\5\19\0042\5\0\0:\5\20\0043\5\21\0:\5\22\0043\5\23\0:\5\24\0044\5\0\0%\6\25\0>\5\2\0027\5\26\0057\5\27\5:\5\28\0044\5\0\0%\6\25\0>\5\2\0027\5\29\0057\5\27\5:\5\30\0044\5\0\0%\6\25\0>\5\2\0027\5\31\0057\5\27\5:\5 \0044\5\0\0%\6\25\0>\5\2\0027\5!\5:\5!\0043\5/\0003\6#\0007\a\"\1:\a$\0067\a%\1:\a&\0067\a'\0017\b(\1\30\a\b\a:\a)\0067\a*\1:\a+\0067\a,\0017\b-\1\30\a\b\a:\a.\6:\0060\0053\0061\0007\a\"\1:\a$\0067\a%\1:\a&\0067\a'\0017\b(\1\30\a\b\a:\a)\6:\0062\5:\0053\4:\0045\3>\2\2\0017\0026\0%\0037\0>\2\2\1G\0\1\0\vmapper\19load_extension\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\t<CR>\vcenter\19select_default\14<Leader>f\nclose\n<C-q>\16open_qflist\25smart_send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\0\24move_selection_next\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ•­\bâ•®\bâ•¯\bâ•°\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\4\0\0\f^%.git/\19^node_modules/\18^__pycache__/\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\15horizontal\1\0\2\vmirror\1\18preview_width\4³æÌ™\3³æŒÿ\3\rvertical\1\0\1\vmirror\1\1\0\3\20prompt_position\vbottom\19preview_cutoff\3x\nwidth\4\0€€ ÿ\3\17find_command\1\0\n\17initial_mode\vinsert\20layout_strategy\15horizontal\23selection_strategy\nreset\ruse_less\2\21sorting_strategy\15descending\18prompt_prefix\v ï€‚  \20scroll_strategy\ncycle\rwinblend\3\0\19color_devicons\2\20selection_caret\6 \1\a\0\0\arg\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\1\2?\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm", "TermExec" },
    config = { "\27LJ\1\2Ð\3\0\0\5\0\19\0\0304\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0024\1\0\0%\2\3\0>\1\2\0027\1\4\0013\2\a\0007\3\5\0007\3\6\3:\3\b\0022\3\0\0:\3\t\0027\3\5\0007\3\n\3:\3\v\0023\3\f\0007\4\5\0007\4\r\4:\4\14\0037\4\5\0007\4\6\4:\4\15\0033\4\16\0:\4\17\3:\3\18\2>\1\2\1G\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\fSpecial\vheight\nwidth\19terminal_width\1\0\2\rwinblend\3\0\vborder\vcurved\14direction\23terminal_direction\20shade_filetypes\tsize\1\0\6\20shade_terminals\2\17open_mapping\t<F4>\17persist_size\2\18close_on_exit\2\20start_in_insert\1\17hide_numbers\2\20terminal_height\tdoom\nsetup\15toggleterm\16load_config\21doom.core.config\frequire\0" },
    keys = { { "", "n" }, { "", "<F4>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-superman"] = {
    loaded = true,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/start/vim-superman",
    url = "https://github.com/jez/vim-superman"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2Â#\0\0\6\0È\1\0¤\0024\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0027\2\3\1)\3\0\0:\3\4\0027\2\5\0003\3\t\0003\4\6\0003\5\a\0:\5\b\4:\4\n\0033\4\v\0:\4\3\0033\4\f\0:\4\r\0033\4\14\0:\4\15\0033\4\17\0003\5\16\0:\5\18\4:\4\19\0033\4\21\0003\5\20\0:\5\22\4:\4\23\0033\4\24\0:\4\25\3>\2\2\0013\2\27\0003\3\26\0:\3\28\0023\3\29\0:\3\30\0023\3\31\0:\3 \0023\3!\0:\3\"\0023\3#\0:\3$\0023\3%\0003\4&\0:\4'\0033\4(\0:\4)\0033\4*\0:\4+\0033\4,\0:\4-\0033\4.\0:\4/\0033\0040\0:\0041\0033\0042\0:\0043\0033\0044\0:\0045\3:\3'\0023\0036\0003\0047\0:\0048\0033\0049\0:\4:\0033\4;\0:\4'\0033\4<\0:\4=\0033\4>\0:\4?\0033\4@\0003\5A\0:\5'\0043\5B\0:\5=\0043\5C\0:\5D\0043\5E\0:\5F\0043\5G\0:\5H\4:\4)\0033\4I\0003\5J\0:\5K\0043\5L\0:\0058\0043\5M\0:\5)\0043\5N\0:\5O\0043\5P\0:\5Q\4:\4O\3:\3=\0023\3R\0003\4S\0:\4/\0033\4T\0:\0045\0033\4U\0:\4O\3:\3F\0023\3V\0003\4W\0:\4'\0033\4X\0:\4=\0033\4Y\0:\4)\0033\4Z\0:\4[\0033\4\\\0:\4:\0033\4]\0:\4^\0033\4_\0:\4H\0033\4`\0:\4O\3:\3)\0023\3a\0003\4b\0:\4=\0033\4c\0:\4/\0033\4d\0:\4+\0033\4e\0:\4H\0033\4f\0:\4g\0033\4h\0:\4D\0033\4i\0:\4:\3:\3+\0023\3j\0003\4k\0:\4l\0033\4m\0:\4O\0033\4n\0:\0045\0033\4o\0:\4g\0033\4p\0:\4H\0033\4q\0:\4[\0033\4r\0:\4^\0033\4s\0:\4:\0033\4t\0:\4?\0033\4u\0:\4'\0033\4v\0:\4w\0033\4x\0:\4=\0033\4y\0003\5z\0:\5H\0043\5{\0:\5=\0043\5|\0:\5'\4:\4D\3:\0031\0023\3}\0003\4~\0:\4+\0033\4\0:\4D\0033\4€\0:\4\3:\0035\0023\3‚\0003\4ƒ\0:\4Q\0033\4„\0:\4…\0033\4†\0:\4:\3:\3Q\0023\3‡\0003\4ˆ\0:\0041\0033\4‰\0:\4'\0033\4Š\0:\4H\0033\4‹\0:\4?\0033\4Œ\0:\4\3:\3H\0023\3Ž\0003\4\0:\4…\0033\4\0:\4)\0033\4‘\0:\4’\0033\4“\0:\4”\0033\4•\0:\4\28\0033\4–\0:\4—\0033\4˜\0:\4?\0033\4™\0:\4š\0033\4›\0:\4O\0033\4œ\0:\4\0033\4ž\0:\4Ÿ\0033\4 \0:\4¡\0033\4¢\0:\4£\0033\4¤\0:\4¥\0033\4¦\0:\4§\0033\4¨\0:\4H\0033\4©\0:\4ª\0033\4«\0:\4\3:\3…\0023\3¬\0003\4­\0:\4=\0033\4®\0:\4¯\0033\4°\0:\0048\0033\4±\0:\0045\0033\4²\0:\4H\0033\4³\0:\4g\3:\3´\0023\3µ\0003\4¶\0:\4'\0033\4·\0:\4)\0033\4¸\0:\4F\0033\4¹\0:\4:\0033\4º\0:\4\0033\4»\0:\4H\3:\3l\0023\3¼\0003\4½\0:\4K\0033\4¾\0:\4š\0033\4¿\0:\4\0033\4À\0:\0045\0033\4Á\0:\4D\0033\4Â\0:\4=\0033\4Ã\0:\4¯\0033\4Ä\0:\4…\0033\4Å\0:\4O\3:\3š\0027\3Æ\0\16\4\2\0003\5Ç\0>\3\3\1G\0\1\0\1\0\1\vprefix\r<leader>\rregister\1\2\0\0\31jump to first char of line\1\2\0\0\17jump to word\1\2\0\0\28jump to previous change\1\2\0\0\24jump to next change\1\2\0\0\16jump to tag\1\2\0\0\18pop tag stack\1\2\0\0\17jump forward\1\2\0\0\14jump back\1\2\0\0\19Alternate file\1\0\1\tname\v+jumps\1\2\0\0\fSymbols\1\2\0\0\fMinimap\1\2\0\0\24Ranger File Browser\1\2\0\0\18Tree Explorer\1\2\0\0\17Start screen\1\2\0\0\18Debugging UI \1\0\1\tname\n+open\6y\1\2\0\0\19Plugins status\1\2\0\0\22Sync your plugins\1\2\0\0000Profile the time taken loading your plugins\1\2\0\0\28Install missing plugins\6C\1\2\0\0!Compile your plugins changes\1\2\0\0%Clean disabled or unused plugins\1\0\1\tname\r+plugins\1\2\0\0\27Toggle maximize window\6v\1\2\0\0\23Split window right\1\2\0\0\23Split window below\6=\1\2\0\0\19Balance window\6L\1\2\0\0\30Window right and maximize\6K\1\2\0\0\27Window up and maximize\6J\1\2\0\0\30Window below and maximize\6H\1\2\0\0\29Window left and maximize\6k\1\2\0\0\14Window up\1\2\0\0\17Window right\6j\1\2\0\0\17Window below\1\2\0\0\16Window left\0062\1\2\0\0\26Layout double columns\1\2\0\0\23Split window right\6-\1\2\0\0\23Split window below\6D\1\2\0\0\29Delete all other windows\1\2\0\0\18Delete window\1\2\0\0\17Other window\1\0\1\tname\r+windows\6m\1\2\0\0\17Jump to mark\1\2\0\0\20Command history\1\2\0\0\16Goto symbol\1\2\0\0\vBuffer\1\2\0\0\tGrep\1\0\1\tname\f+search\1\2\0\0%Restore previously saved session\6w\1\2\0\0\18Save and quit\1\2\0\0\tQuit\1\0\1\tname\19+quit/sessions\6T\1\2\0\0\22Open project tree\1\2\0\0%Browse project files and folders\1\2\0\0\25Browse project files\1\0\1\tname\r+project\1\2\0\0\15Git branch\1\2\0\0\16Git commits\1\2\0\0\15Git status\1\0\1\tname\15+telescope\1\2\0\0\fCommits\6B\1\2\0\0\rBranches\1\2\0\0\15Blame line\1\2\0\0\17Preview hunk\1\2\0\0\15Reset hunk\1\2\0\0\17Reset buffer\1\2\0\0\20Undo stage hunk\1\2\0\0\vStatus\1\2\0\0\15Stage hunk\1\2\0\0\tPush\1\2\0\0\tPull\6o\1\2\0\0\17Open LazyGit\1\0\1\tname\t+git\1\2\0\0\26Recently opened files\1\2\0\0\14Help tags\6S\1\2\0\0\19Save all files\1\2\0\0\14Save file\1\2\0\0\15Find files\1\2\0\0 Create a new unnamed buffer\1\2\0\0\30Edit Neovim configuration\1\0\1\tname\n+file\1\2\0\0 Reload user custom settings\1\2\0\0\23Change colorscheme\6R\1\2\0\0\24Create crash report\1\2\0\0\31Rollback Doom Nvim version\6u\1\2\0\0\21Update Doom Nvim\1\2\0\0!Open Doom Nvim documentation\1\2\0\0&Edit your Doom Nvim configuration\1\2\0\0\26Show Doom keybindings\1\0\1\tname\n+doom\1\2\0\0\21Open errors list\1\2\0\0\19Previous error\1\2\0\0\15Next error\1\0\1\tname\f+errors\6q\1\2\0\0#Diagnostics into location list\6l\1\2\0\0\26Show line diagnostics\1\2\0\0\25Show type definition\1\2\0\0\rLsp info\6a\1\2\0\0\17Code actions\1\0\1\tname\t+lsp\6s\1\2\0\0\23Evaluate selection\6e\1\2\0\0\31Evaluate word under cursor\6t\1\2\0\0\28Terminate debug session\1\2\0\0(Start (or continue) a debug session\1\2\0\0&Toggle breakpoint on current line\1\0\1\tname\v+debug\6h\1\2\0\0?Run restclient on the line that the cursor is currently on\6c\1\2\0\0\28Compile and run project\1\2\0\0\20Compile project\6r\1\2\0\0\21Run current file\6i\1\2\0\0\17Start a REPL\1\0\1\tname\n+code\6p\1\2\0\0\20Previous buffer\6[\1\2\0\0\20Previous buffer\6g\1\2\0\0\16Goto buffer\6n\1\2\0\0\16Next buffer\6]\1\2\0\0\16Next buffer\6f\1\2\0\0\18Format buffer\6d\1\2\0\0\25Close current buffer\6b\1\2\0\0\18Switch buffer\1\0\1\tname\r+buffers\btab\1\2\0\0\16Last buffer\6:\1\2\0\0\20Command history\6!\1\2\0\0\20Toggle terminal\6;\1\2\0\0\fComment\6/\1\0\0\1\2\0\0\18Search a word\vhidden\1\t\0\0\r<silent>\n<Cmd>\n<cmd>\v<Plug>\tcall\blua\a^:\a^ \vlayout\vheight\1\0\2\nalign\tleft\fspacing\3\3\1\0\2\bmax\3\n\bmin\3\1\vwindow\fpadding\1\0\0\1\5\0\0\3\0\3\0\3\0\3\0\15key_labels\1\0\3\t<cr>\bRET\f<space>\bSPC\n<tab>\bTAB\nicons\1\0\3\ngroup\6+\14separator\bâžœ\15breadcrumb\aÂ»\1\0\n\azf\16Create fold\6!#Filter though external program\ag~\16Toggle case\6d\vDelete\agU\14Uppercase\6>\17Indent right\6c\vChange\6y\16Yank (copy)\agu\14Lowercase\t<lt>\16Indent left\fplugins\1\0\3\19ignore_missing\2\14show_help\2\rtriggers\tauto\fpresets\1\0\a\6g\2\6z\2\fwindows\2\fmotions\2\bnav\2\17text_objects\2\14operators\1\1\0\2\14registers\1\nmarks\1\nsetup\agc\14operators\30which-key.plugins.presets\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/pierre/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmd%-parser"] = "cmd-parser.nvim",
  ["^lua%-dev"] = "lua-dev.nvim",
  ["^neogit"] = "neogit",
  ["^nvim%-mapper"] = "nvim-mapper",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^plenary"] = "plenary.nvim",
  ["^popup"] = "popup.nvim",
  ["^telescope"] = "telescope.nvim",
  ["^toggleterm"] = "toggleterm.nvim",
  ["^toggleterm%.terminal"] = "toggleterm.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\1\2?\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: persistence.nvim
time([[Config for persistence.nvim]], true)
try_loadstring("\27LJ\1\2ƒ\1\0\0\4\0\n\0\0154\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0004\2\3\0007\2\4\0027\2\5\2%\3\6\0>\2\2\2%\3\a\0$\2\3\2:\2\t\1>\0\2\1G\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0", "config", "persistence.nvim")
time([[Config for persistence.nvim]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\1\2³\26\0\0\t\0;\0‚\0014\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0024\1\3\0007\1\4\0014\2\0\0%\3\6\0>\2\2\0027\2\a\2%\3\b\0$\2\3\2:\2\5\0014\1\3\0007\1\4\1%\2\n\0:\2\t\0014\1\3\0007\1\4\0013\2\15\0003\3\r\0003\4\f\0:\4\14\3:\3\16\0023\3\18\0003\4\17\0:\4\14\3:\3\19\0023\3\21\0003\4\20\0:\4\14\3:\3\22\0023\3\24\0003\4\23\0:\4\14\3:\3\25\0023\3\27\0003\4\26\0:\4\14\3:\3\28\0023\3\30\0003\4\29\0:\4\14\3:\3\31\0023\3!\0003\4 \0:\4\14\3:\3\4\2:\2\v\0014\1\3\0007\1\4\0012\2\3\0%\3#\0004\4\3\0007\4$\0047\4%\4%\5&\0004\6\3\0007\6$\0067\6'\0064\a\3\0007\a$\a7\a(\a4\b\3\0007\b\4\b7\b)\b>\a\2\0=\6\0\0=\4\1\2%\5*\0$\3\5\3;\3\1\2:\2\"\0017\1+\0007\1,\1\14\0\1\0T\1\4€4\1\3\0007\1\4\1'\2\1\0:\2-\0014\1\3\0007\1\4\0014\2\3\0007\2/\0027\3+\0007\3.\3>\2\2\2\15\0\2\0T\3\3€3\0020\0\14\0\2\0T\3\2€7\2+\0007\2.\2:\2.\0014\1\3\0007\0011\1%\0022\0007\3+\0007\0033\0037\0034\3$\2\3\2>\1\2\0014\1\3\0007\0011\1%\0025\0007\3+\0007\0033\0037\0036\3$\2\3\2>\1\2\0014\1\3\0007\0011\1%\0027\0007\3+\0007\0033\0037\0038\3$\2\3\2>\1\2\0014\1\3\0007\0011\1%\0029\0007\3+\0007\0033\0037\3:\3$\2\3\2>\1\2\1G\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\22\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  T                                                                               \16tbl_isempty\28dashboard_custom_header!dashboard_disable_statusline\23dashboard_statline\tdoom\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand\16h doom_nvim\1\2\0\0000ï€­  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000ï‘¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ï‡‚  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000ïœ¡  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ï€®  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ï…œ  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ï€ž  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\16load_config\21doom.core.config\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutlineClose lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClipboard lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClipboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClose lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TermExec lua require("packer.load")({'toggleterm.nvim'}, { cmd = "TermExec", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'toggleterm.nvim'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutlineOpen lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <F4> <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>F4>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> n <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "n", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au ColorScheme * ++once lua require("packer.load")({'nvim-dap', 'galaxyline.nvim', 'bufferline.nvim', 'nvim-lspconfig', 'nvim-colorizer.lua'}, { event = "ColorScheme *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'range-highlight.nvim', 'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'LuaSnip', 'format.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au ColorSchemePre * ++once lua require("packer.load")({'doom-themes.nvim'}, { event = "ColorSchemePre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
