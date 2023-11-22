return {
  'AckslD/nvim-neoclip.lua',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    { 'kkharji/sqlite.lua', module = 'sqlite' },
  },
  config = function()
    local nvim_neoclip = require 'neoclip'
    local keymap = vim.keymap

    nvim_neoclip.setup {
      keys = {
        telescope = {
          i = {
            paste = '<CR>',
            paste_behind = '<C-p>',
          },
        },
      },
    }

    keymap.set('n', '<leader>co', '<cmd>Telescope neoclip<CR>', { desc = 'Open clipboard history' })
  end,
}
