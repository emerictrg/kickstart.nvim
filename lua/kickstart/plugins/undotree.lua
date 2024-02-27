return {
  'mbbill/undotree',
  cmd = 'UndotreeToggle',
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.keymap.set('n', '<leader>U', ':UndotreeToggle<CR>', { desc = 'Show undo tree' })
  end,
}
