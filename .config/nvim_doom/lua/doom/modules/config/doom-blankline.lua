return function()
  local config = require("doom.core.config").load_config()

  require("indent_blankline").setup({
    enabled = config.doom.show_indent,
    -- enabled = true,
    -- char = "│",
    -- If treesitter plugin is enabled then use its indentation
    use_treesitter = require("doom.core.functions").check_plugin("nvim-treesitter", "opt") and true
      or false,
    show_first_indent_level = false,
    show_current_context = true,
    -- show_current_context_start = true,
    filetype_exclude = { "help", "dashboard", "packer", "norg" },
    buftype_exclude = { "terminal" },
  })
end
