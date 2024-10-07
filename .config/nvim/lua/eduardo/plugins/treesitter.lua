return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'cmake',
        'css',
        'diff',
        'dockerfile',
        'elixir',
        'git_config',
        'git_rebase',
        'gitattributes',
        'gitcommit',
        'gitignore',
        'go',
        'gomod',
        'gosum',
        'gotmpl',
        'graphql',
        'html',
        'java',
        'javascript',
        'jsdoc',
        'json',
        'lua',
        'luadoc',
        'make',
        'markdown',
        'php',
        'phpdoc',
        'python',
        'regex',
        'rust',
        'sql',
        'svelte',
        'templ',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'zig',
      },
      auto_install = { enable = true },
      highlight = { enable = true },
      ident = { enable = true },
    },
  },
}
