-- custome keymaps
vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader>n", ":new ")
vim.keymap.set("n", "<leader>q", ":wq<CR>")
vim.keymap.set("n", "<leader>fq", ":q!<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>tt", function()
  vim.cmd("lua tokyonight('tokyonight-night')")
  vim.cmd("lua tokyonight('tokyonight-night')")
end, { desc = "tokyonight theme" })
vim.keymap.set("n", "<leader>tc", function()
  vim.cmd("lua catppuccin()")
end, { desc = "catppuccin theme" })
vim.keymap.set('v', '<leader>y', '"+yy', { desc = "yank to clipboard" })
vim.keymap.set('n', '<C-y>', '"+yy', { desc = "yank to clipboard" })
vim.keymap.set('v', '<C-y>', '"+yy', { desc = "yank to clipboard" })
vim.keymap.set("n", "<leader>m", ":Ex<CR>")
vim.keymap.set("n", "<leader>N", ":Ex<CR>", { desc = " NetrW" })
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left  <CR>", { desc = " file tree(neotree)" })
vim.keymap.set("n", "mh", ":Noice<CR>", { desc = "message history" })
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left  <CR>")
vim.keymap.set('n', '<leader>lf', ':lua vim.lsp.buf.formatting_sync()<CR>')
-- Key binding to open the terminal
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })

-- wrap text at edge
vim.opt.wrap = true
-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
