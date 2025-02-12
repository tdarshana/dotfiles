return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  init = function()
    local wk = require("which-key")
    wk.register({ ["<leader>sc"] = { ":Silicon<CR>", "Snapshot Code in Visual Mode" } }, { mode = "v" })
  end,
  config = function()
    require("silicon").setup({
      -- Configuration here, or leave empty to use defaults
      font = "Ligalex Mono for Powerline=34;Noto Emoji=34",
      theme = "OneHalfDark",
      background = "#94e2d5",
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
      end,
    })
  end,
}
