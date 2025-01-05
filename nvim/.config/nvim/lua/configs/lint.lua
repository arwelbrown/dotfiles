local lint = require "lint"

lint.linters_by_ft = {
  lua = { "luacheck" },
  php = { "phpcs" },
}

lint.linters.luacheck.args = {
  "--globals",
  "vim",
  "--formatter",
  "plain",
  "--codes",
  "--ranges",
  "-",
}

lint.linters.phpcs.args = {
  "-q",
  "--report=json",
  "-",
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})
