-- Escape from Vim Terminal Mode
vim.api.nvim_set_keymap('t','<Leader><ESC>','<C-\\><C-n>',{noremap = true})

-- Disable Arrow Keys in All Modes
-- **Use hjkl instead**
local modes = { 'n', 'v', 's' }
local arrows = { '<Up>', '<Down>', '<Left>', '<Right>' }
for _, mode in ipairs(modes) do
    for _, arrow in ipairs(arrows) do
        vim.api.nvim_set_keymap(mode, arrow, '<Nop>', { noremap = true, silent = true })
    end
end

local map = vim.keymap.set

-- Clear search highlight on Escape
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear Search Highlight' })

-- Save file
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<CR><Esc>', { desc = 'Save File' })

-- Quit
map('n', '<leader>qq', '<cmd>qa<CR>', { desc = 'Quit All' })

-- Window navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Go to Left Window' })
map('n', '<C-j>', '<C-w>j', { desc = 'Go to Lower Window' })
map('n', '<C-k>', '<C-w>k', { desc = 'Go to Upper Window' })
map('n', '<C-l>', '<C-w>l', { desc = 'Go to Right Window' })

-- Window management
map('n', '<leader>ww', '<C-w>p', { desc = 'Other Window' })
map('n', '<leader>wd', '<C-w>c', { desc = 'Delete Window' })
map('n', '<leader>ws', '<C-w>s', { desc = 'Split Below' })
map('n', '<leader>wv', '<C-w>v', { desc = 'Split Right' })

-- Window resize
map('n', '<C-Up>', '<cmd>resize +2<CR>', { desc = 'Increase Window Height' })
map('n', '<C-Down>', '<cmd>resize -2<CR>', { desc = 'Decrease Window Height' })
map('n', '<C-Left>', '<cmd>vertical resize -2<CR>', { desc = 'Decrease Window Width' })
map('n', '<C-Right>', '<cmd>vertical resize +2<CR>', { desc = 'Increase Window Width' })

-- Buffer navigation
map('n', '<S-h>', '<cmd>bprevious<CR>', { desc = 'Prev Buffer' })
map('n', '<S-l>', '<cmd>bnext<CR>', { desc = 'Next Buffer' })

-- Tab management
map('n', '<leader><tab>l', '<cmd>tablast<CR>', { desc = 'Last Tab' })
map('n', '<leader><tab>f', '<cmd>tabfirst<CR>', { desc = 'First Tab' })
map('n', '<leader><tab><tab>', '<cmd>tabnew<CR>', { desc = 'New Tab' })
map('n', '<leader><tab>]', '<cmd>tabnext<CR>', { desc = 'Next Tab' })
map('n', '<leader><tab>d', '<cmd>tabclose<CR>', { desc = 'Close Tab' })
map('n', '<leader><tab>[', '<cmd>tabprevious<CR>', { desc = 'Previous Tab' })

-- Move lines up/down
map('n', '<A-j>', '<cmd>m .+1<CR>==', { desc = 'Move Line Down' })
map('n', '<A-k>', '<cmd>m .-2<CR>==', { desc = 'Move Line Up' })
map('i', '<A-j>', '<Esc><cmd>m .+1<CR>==gi', { desc = 'Move Line Down' })
map('i', '<A-k>', '<Esc><cmd>m .-2<CR>==gi', { desc = 'Move Line Up' })
map('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move Selection Down' })
map('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move Selection Up' })

-- Better indenting (stay in visual mode)
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Diagnostics
map('n', '<leader>xd', vim.diagnostic.open_float, { desc = 'Line Diagnostics' })
map('n', '<leader>xl', '<cmd>lopen<CR>', { desc = 'Location List' })
map('n', '<leader>xq', '<cmd>copen<CR>', { desc = 'Quickfix List' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Next Diagnostic' })
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Prev Diagnostic' })

-- Lazy plugin manager
map('n', '<leader>l', '<cmd>Lazy<CR>', { desc = 'Lazy' })
