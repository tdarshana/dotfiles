-- gcc to toggle line comment, gbc to toggle block comment
-- gc in visual mode to comment selection
return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
}
