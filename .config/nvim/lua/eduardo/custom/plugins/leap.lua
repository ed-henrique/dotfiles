return {
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
}
