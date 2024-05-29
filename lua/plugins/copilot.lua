-- copilot.vim 配置
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("\\<CR>")', { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("\\<CR>")', { silent = true, expr = true, script = true })

-- CoPilot 配置
require('copilot').setup({
  panel = {
    enabled = true,
    auto_refresh = false,
    keymap = {
      jump_prev = '[[',
      jump_next = ']]',
      accept = '<CR>',
      refresh = 'gr',
      open = '<M-CR>'
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = false,
    debounce = 75,
    keymap = {
      accept = '<M-l>',
      next = '<M-]>',
      prev = '<M-[>',
      dismiss = '<C-]>',
    },
  },
  filetypes = {
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = 'node', -- Node.js version must be > 16.x
  server_opts_overrides = {},
})
