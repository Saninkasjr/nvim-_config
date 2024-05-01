return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.code_actions.ts_node_action,
        -- null_ls.builtins.completion.spell,
      },
    })
    vim.api.nvim_create_autocmd("BufWritePre", { callback = function() vim.cmd("lua vim.lsp.buf.format()") end })
  end
}
