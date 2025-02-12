-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Copy current path
vim.api.nvim_create_user_command("CopyPath", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, {})
