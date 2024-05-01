return {
  --color scheme
  { 'echasnovski/mini.statusline',    version = false },
  { 'echasnovski/mini.nvim',          version = false },
  { 'echasnovski/mini.comment' },
  --indent and formating
  { "jose-elias-alvarez/null-ls.nvim" },

  --mason config and nvim-lspconfig
  { 'neovim/nvim-lspconfig' },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  --code completion
  { 'hrsh7th/cmp-nvim-lua' },
  { 'lukas-reineke/cmp-rg' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
  { "saadparwaiz1/cmp_luasnip" },
  { "rafamadriz/friendly-snippets" },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-buffer' },
  { 'onsails/lspkind.nvim' },

  --status and winbar ui config
  { 'akinsho/bufferline.nvim',     version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
  {
    { 'akinsho/toggleterm.nvim', version = "*", config = true } or
    { 'akinsho/toggleterm.nvim', version = "*", opts = {} }
  },
  --extras
  { "hrsh7th/cmp-emoji", },



  --nvim-treesitter and telescope, telescope-ui-select, neo-tree
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
}
