return {
  {
    "tpope/vim-fugitive",
  },
  {
    "folke/neodev.nvim",
    opts = {},
  },
  {
    'j-hui/fidget.nvim',
    opts = {},
  },
  {
    'laytan/cloak.nvim',
    opts = {
      enabled = true,
    },
  },
  {
    "tpope/vim-sleuth",
  },
  {
    'AckslD/nvim-neoclip.lua',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      { 'kkharji/sqlite.lua', module = 'sqlite' },
    },
    config = function()
      local nvim_neoclip = require 'neoclip'

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

      vim.keymap.set('n', '<leader>co', '<cmd>Telescope neoclip<CR>')
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
  },
  {
    'folke/trouble.nvim',
    config = function()
      require('trouble').setup {
        icons = false,
      }

      vim.keymap.set('n', '<leader>tt', function()
        require('trouble').toggle()
      end)

      vim.keymap.set('n', '[d', function()
        require('trouble').next { skip_groups = true, jump = true }
      end)

      vim.keymap.set('n', ']d', function()
        require('trouble').previous { skip_groups = true, jump = true }
      end)
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      local telescope = require 'telescope'
      local actions = require 'telescope.actions'

      telescope.setup {
        defaults = {
          mappings = {
            i = {
              ['<C-k>'] = actions.move_selection_previous,
              ['<C-j>'] = actions.move_selection_next,
              ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
      }

      telescope.load_extension 'fzf'
      telescope.load_extension 'neoclip'

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files)
      vim.keymap.set('n', '<leader>fr', builtin.oldfiles)
      vim.keymap.set('n', '<leader>fs', builtin.live_grep)
      vim.keymap.set('n', '<leader>fc', builtin.grep_string)
    end,
  },
  {
    'github/copilot.vim',
    cmd = 'Copilot',
    init = function()
      vim.g.copilot_no_tab_map = true
      vim.keymap.set('i', '<c-J>', 'copilot#Accept("CR")', { silent = true, expr = true, script = true, replace_keycodes = false })
    end
  },
}
