return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local ts_config = require("nvim-treesitter.configs")
    ts_config.setup({
      ensure_installed = { "lua", "javascript", "php", "html", "go", "rust" },
      highlight = { enable = true },
      indent = { enable = true },
      autoinstall = true,
    })

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.blade = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = {"src/parser.c"},
        branch = "main",
      },
      filetype = "blade"
    }
    vim.filetype.add({
      pattern = {
        [".*%.blade%.php"] = "blade"
      }
    })
  end
}

