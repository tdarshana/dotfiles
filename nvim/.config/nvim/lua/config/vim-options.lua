-- ========================
-- Vim Settings / Options
-- ========================
vim.g.mapleader = " " -- set leader key to space
vim.g.maplocalleader = "\\"

-- Line Numbers
vim.opt.number = true -- show current line number on cursor
vim.opt.relativenumber =true -- show relative line numbers

-- Tab spacing / Behavior
vim.opt.expandtab = true -- replace tabs with spaces
vim.opt.tabstop = 4 -- tabstop = 4 spaces
vim.opt.softtabstop = 4 -- softtabstop = 4 spaces
vim.opt.shiftwidth = 4 -- shiftwidth = 4 spaces
vim.opt.list = true -- view tabs in the editor view
vim.opt.smartindent = true
vim.opt.breakindent = true


-- Clipboard Settings
-- vim.opt.clipboard = "unnamedplus" -- set system clipboard to Nvim, this is bad because this can mess up the system clipboard, instead, use a seperate command to copy to the system clipboard, or manually select the section in v mode(s) and run `:w !pbcopy` to copy to the MacOs system clipboard

-- Left columns and similar settings
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 4
vim.opt.wrap = true -- enable line wrap 
vim.opt.scrolloff = 6 -- number of lines to keep above/below cursor
vim.opt.sidescrolloff = 8 -- number of columns to keep to the left / right of the cursor


-- General Behaviours
vim.g.loaded_netrw = 1 -- disable netrw
vim.g.loaded_netrwPlugin = 1 -- disable netrw loading(vim)
vim.opt.backup = false --disable backup file creation
vim.opt.clipboard = "unnamedplus" -- enable system clipboard
vim.opt.conceallevel = 0 -- show concealed characters
vim.opt.fileencoding = "utf-8" -- set file encoding to UTF-8
vim.opt.mouse = "" -- disable mouse support
vim.opt.showmode = false --hide builtin mode display (not in lualine)
vim.opt.showcmdloc = "statusline" -- show key sequences in lualine instead of bottom-right
vim.opt.termguicolors = true -- enable term GUI colors
vim.opt.timeoutlen = 1000 -- set timeout for mapped sequences
vim.opt.undofile = true -- enable persistant undo
vim.opt.updatetime = 100 -- set faster completions
vim.opt.writebackup = false -- prevent editing of files being edited elsewhere
vim.opt.cursorline = true -- disable highlight current line
vim.opt.showmatch = true -- highlight matching parantheses
vim.opt.foldmethod = 'marker' -- set the fold method to marker
vim.opt.linebreak = true -- enable line wrapping at convenient points, such as spaces or tabs, rather than beaking words in middle

-- Searching behaviours
vim.opt.hlsearch = true -- highlight all matches in search
vim.opt.ignorecase = true -- ignore case in search
vim.opt.smartcase = true -- match case if explicitly stated


-- Window and Pane Behaviour
vim.opt.splitright = true -- When opening a new vertical split, place it to the right of current pane
vim.opt.splitbelow = true -- when opening a new horizontal split, place it below the current split

-- ====================================
-- Mode specific configurations for Vim
-- ====================================
-- Terminal Mode - AutoCommands
vim.api.nvim_create_autocmd("TermOpen", {
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
    end,
})
