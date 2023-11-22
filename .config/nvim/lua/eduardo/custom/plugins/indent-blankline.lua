return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    char = '┊',
    show_trailing_blankline_indent = false,
  },
  config = function()
    local ibl = require 'ibl'
    ibl.setup()
  end,
}
