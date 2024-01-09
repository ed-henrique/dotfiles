return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      local harpoon = require("harpoon")

      harpoon:setup()

      vim.keymap.set('n', '<leader>hm', function() harpoon:list():append() end)
      vim.keymap.set('n', '<leader>ho', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
      vim.keymap.set('n', '<leader>hn', function() harpoon:list():next() end)
      vim.keymap.set('n', '<leader>hp', function() harpoon:list():prev() end)
    end,
  },
  {
    'ggandor/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
    config = function()
      local leap = require 'leap'

      leap.add_default_mappings()

      leap.opts.equivalence_classes = {
        'aáàãâ',
        'eéèẽê',
        'iíìĩî',
        'oóòõô',
        'uúùũû',
        'yýỳỹŷ',
        'wẃẁŵ',
        'nñ',
      }
    end,
  },
}
