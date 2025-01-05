local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    yaml = { "prettier" },
    json = { "prettier" },
    javascript = { "prettierd" },
    php = { "php-cs-fixer" },
    blade = { "blade-formatter" },
  },
  format_on_save = {
    timeout_ms = 1000,
    async = false,
    lsp_fallback = true,
  },
  formatters = {
    prettier = {
      command = "prettier",
      args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
    },
    stylua = {
      command = "stylua",
      args = { "-" },
    },
    ["php-cs-fixer"] = {
      command = "php-cs-fixer",
      args = { "fix", "-" },
    },
  },
}

return options
