--extra plugins based on nvim-mini
return {
  {
    'echasnovski/mini.comment',
    config = function()
      require('mini.comment').setup()
    end
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  {
    'arnamak/stay-centered.nvim',
    config = function()
      require('stay-centered').setup({
        enabled = true,
      })
    end
  }, {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.indentscope').setup()
  end
},
  {
    require 'cmp'.setup {
      sources = {
        { name = 'path' }
      }
    }
  }
}
