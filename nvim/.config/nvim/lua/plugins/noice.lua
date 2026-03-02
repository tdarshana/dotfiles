return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    opts = {
        cmdline = {
            enabled = true,
            view = "cmdline_popup", -- centered floating popup
        },
        messages = {
            enabled = true,
        },
        popupmenu = {
            enabled = true,
        },
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            bottom_search = false,        -- use floating popup for search too
            command_palette = true,        -- positions cmdline and popupmenu together
            long_message_to_split = true,
            inc_rename = false,
            lsp_doc_border = true,
        },
    },
}
