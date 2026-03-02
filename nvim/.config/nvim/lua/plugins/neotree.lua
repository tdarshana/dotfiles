-- Neo Tree Setup
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>', {desc = '[Neotree] Show file tree left side'})
        vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle left<CR>', {desc = 'File Explorer'})
        require('neo-tree').setup({
            window = {
                mappings = {
                    ["<space>"] = false, -- let leader key pass through to which-key
                    ["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = false } },
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_by_name = {
                        -- add extension names you want to explicitly exclude
                        -- '.git',
                        -- '.DS_Store',
                        -- 'thumbs.db',
                    },
                    never_show = {},
                },
            },
        })
    end,
}
