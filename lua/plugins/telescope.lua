return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>nn', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fr', ':Telescope oldfiles<CR>', {})
  end
}
