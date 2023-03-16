local package = require('core.pack').package
local conf = require('modules.ui.config')

package({
  'glepnir/porcelain.nvim',
  dev = true,
  config = function()
    vim.cmd.colorscheme('porcelain')
  end,
})

package({
  'glepnir/dashboard-nvim',
  dev = true,
  event = 'VimEnter',
  config = conf.dashboard,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

package({
  'glepnir/whiskyline.nvim',
  dev = true,
  config = conf.whisky,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

-- local enable_indent_filetype = {
--   'go',
--   'lua',
--   'sh',
--   'rust',
--   'cpp',
--   'typescript',
--   'typescriptreact',
--   'javascript',
--   'json',
--   'python',
-- }

package({
  'lewis6991/gitsigns.nvim',
  dev = true,
  event = { 'BufRead', 'BufNewFile' },
  config = conf.gitsigns,
})
