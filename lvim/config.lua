-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<A-t>", 'copilot#Accept("")', { expr = true, silent = true })

vim.cmd('set clipboard=unnamedplus')
vim.opt.relativenumber = true
vim.opt.textwidth = 90
vim.opt.colorcolumn = "90"
vim.opt.wrap = true
vim.opt.linebreak = true

lvim.transparent_window = true

lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "rose-pine/neovim", name = 'rose-pine'},
  { "github/copilot.vim"},
  {'nvim-treesitter/nvim-treesitter'},
}

lvim.colorscheme = "rose-pine"

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "marksman" })
require("lvim.lsp.manager").setup("marksman")

