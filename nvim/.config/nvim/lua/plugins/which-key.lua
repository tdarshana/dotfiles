return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        win = {
            no_overlap = true,
            width = { min = 30, max = 50 },
            height = { min = 4, max = 25 },
            col = math.huge,
            row = math.huge,
            border = "rounded",
            padding = { 1, 2 },
        },
        triggers = {
            { "<auto>", mode = "nxsot" },
            { "[", mode = "" },
            { "]", mode = "" },
        },
        spec = {
            { "<leader>b", group = "Buffer" },
            { "<leader>c", group = "Code" },
            { "<leader>f", group = "Find" },
            { "<leader>g", group = "Git" },
            { "<leader>h", group = "Git Hunk" },
            { "<leader>q", group = "Quit" },
            { "<leader>s", group = "Search" },
            { "<leader>u", group = "UI" },
            { "<leader>w", group = "Window" },
            { "<leader>x", group = "Diagnostics" },
            { "<leader><tab>", group = "Tab" },
        },
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}
