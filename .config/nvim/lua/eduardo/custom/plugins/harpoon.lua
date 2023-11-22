return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local keymap = vim.keymap

    keymap.set('n', '<leader>hm', "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = 'Mark file with harpoon' })
    keymap.set('n', '<leader>ho', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = 'Open harpoon menu' })
    keymap.set('n', '<leader>hn', "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = 'Go to next harpoon mark' })
    keymap.set('n', '<leader>hp', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = 'Go to previous harpoon mark' })
  end,
}