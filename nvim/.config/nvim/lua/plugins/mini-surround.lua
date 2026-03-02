-- Surround actions: sa (add), sd (delete), sr (replace)
-- Example: saiw" → surround word with quotes
return {
    "echasnovski/mini.surround",
    event = { "BufReadPre", "BufNewFile" },
    version = false,
    opts = {},
}
