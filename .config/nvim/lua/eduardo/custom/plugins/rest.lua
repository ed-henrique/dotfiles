return {
  'rest-nvim/rest.nvim',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    local rest = require 'rest-nvim'
    local keymap = vim.keymap

    rest.setup {
      result_split_horizontal = true,
    }

    keymap.set('n', '<leader>rg', '<Plug>RestNvim', { desc = 'Run HTTP request' })
    keymap.set('n', '<leader>rr', '<Plug>RestNvim', { desc = 'Rerun last HTTP request' })
  end,
}
