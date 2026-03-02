return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons" -- optional dependency
  },
  opts = {
    -- configurations
    vim.keymap.set(
      'n',
      '<leader>bq',
      function()
        require("barbecue.ui").toggle()
      end,
      {desc = '[Barbecue] Toggle globally'}
    ),
  },
  config = function()
    require('barbecue').setup{
      theme = 'tokyonight'
    }
  end
}
