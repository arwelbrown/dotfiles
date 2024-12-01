return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local ts_config = require("nvim-treesitter.configs")
    ts_config.setup({
      ensure_installed = { "lua", "javascript", "php", "go", "rust" },
      highlight = { enable = true },
      indent = { enable = true },
      autoinstall = true,
    })
  end
}



