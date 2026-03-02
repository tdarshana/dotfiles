-- NVim Theme & Colorscheme
return {
  "catppuccin/nvim",
  enabled = true,
  name= "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin-frappe"
  end
}
