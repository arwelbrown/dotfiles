local options = {
  ensure_installed = {
    "vim",
    "bash",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "lua",
    "vimdoc",
    "html",
    "css",
    "php",
    "html",
    "markdown",
    "yaml",
    "blade",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}
