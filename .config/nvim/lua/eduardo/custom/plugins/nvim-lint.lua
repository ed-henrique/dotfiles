return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require 'lint'

    lint.linter_by_ft = {
      javascript = { 'eslint_d' },
      javascriptreact = { 'eslint_d' },
      typescript = { 'eslint_d' },
      typescriptreact = { 'eslint_d' },
      lua = { 'luacheck' },
      python = { 'pylint' },
      php = { 'phpcs' },
      sh = { 'shellcheck' },
      go = { 'golangcilint' },
      markdown = { 'markdownlint' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint(nil, { ignore_errors = true })
      end,
    })

    vim.keymap.set('n', '<leader>l', function()
      lint.try_lint(nil, { ignore_errors = true })
    end, { desc = 'Trigger linting for current file' })
  end,
}