return {
  "folke/zen-mode.nvim",
  config = function()
    function Zm()
      opts = {
        window = {
          options = {
            signcolumn = "no",      -- disable signcolumn
            number = false,         -- disablenumber column
            relativenumber = false, -- disable relative numbers
            cursorline = false,     -- disable cursorline
            cursorcolumn = false,   -- disable cursor column
            foldcolumn = "0",       -- disable fold column
          }
        }
      }
      require("zen-mode").toggle({})
    end
  end
}
