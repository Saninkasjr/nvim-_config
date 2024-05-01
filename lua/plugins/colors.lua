return {
  {
    "catppuccin/nvim",
    config = function()
      function catppuccin(color)
        require("catppuccin").setup({
          flavour = "mocha", -- latte, frappe, macchiato, mocha
          background = {
            light = "latte",
            dark = "mocha",
          }
        })
        color = color or "catppuccin"
        vim.cmd.colorscheme(color)
      end

      catppuccin()
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      function tokyonight(color)
        color = color or "tokyonight" --storm, moon, day
        vim.cmd.colorscheme(color)
      end
    end
  }
}
