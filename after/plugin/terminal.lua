require("toggleterm").setup {
  open_mapping = [[<c-t>]],
  hide_numbers = true,
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = 'horizontal',
  float_opts = {
    anchor = 'B',
  },
  close_on_exit = true,
  shell = vim.o.shell,
  size = function(term) return 5 end,
}
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
