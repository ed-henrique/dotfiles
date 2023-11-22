return {
  'ray-x/web-tools.nvim',
  config = function()
    local web_tools = require 'web-tools'
    local keymap = vim.keymap

    web_tools.setup {}

    keymap.set('n', '<leader>bs', '<cmd>BrowserSync --port 3000<CR>', { desc = 'Run local web server' })
    keymap.set('n', '<leader>bo', '<cmd>BrowserOpen --port 3000<CR>', { desc = 'Open local web server' })
    keymap.set('n', '<leader>br', '<cmd>BrowserRestart<CR>', { desc = 'Restart local web server' })
    keymap.set('n', '<leader>bs', '<cmd>BrowserStop<CR>', { desc = 'Stop local web server' })
  end,
}
