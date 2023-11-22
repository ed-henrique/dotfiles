return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local nvim_tree = require 'nvim-tree'
    local keymap = vim.keymap

    local function on_attach(bufnr)
      local api = require 'nvim-tree.api'

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      api.config.mappings.default_on_attach(bufnr)

      keymap.set('n', 'l', api.node.open.edit, opts 'Open')
    end

    nvim_tree.setup {
      on_attach = on_attach,
    }

    keymap.set('n', '<leader>fe', '<cmd>NvimTreeFocus<CR>', { desc = 'Open file explorer' })
  end,
}
