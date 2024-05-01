require("mason").setup()
require("mason-lspconfig").setup()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("mason-lspconfig").setup_handlers {
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities
    }
  end,
}
--keymaps for lsps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, {})
vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, {})
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, {})
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set('n', '<leader>tf', vim.lsp.buf.format, {})
