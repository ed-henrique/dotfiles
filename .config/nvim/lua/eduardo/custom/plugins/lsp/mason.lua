return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require 'mason'
    local mason_lspconfig = require 'mason-lspconfig'
    local mason_tool_installer = require 'mason-tool-installer'

    mason.setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    mason_lspconfig.setup {
      ensure_installed = {
        'angularls',
        'bashls',
        'cssls',
        'dockerls',
        'docker_compose_language_service',
        'emmet_ls',
        'eslint',
        'gopls',
        'html',
        'jsonls',
        'tsserver',
        'lua_ls',
        'marksman',
        'intelephense',
        'pyright',
        'sqlls',
        'taplo',
        'tailwindcss',
        'templ',
        'lemminx',
        'yamlls',
      },
      automatic_installation = true,
    }

    mason_tool_installer.setup {
      ensure_installed = {
        'eslint_d',
        'prettier',
        'black',
        'isort',
        'pylint',
        'stylua',
        'phpcs',
        'phpcbf',
        'shfmt',
        'htmlbeautifier',
        'shellcheck',
        'golangci-lint',
        'jq',
        'markdownlint',
      },
    }
  end,
}
