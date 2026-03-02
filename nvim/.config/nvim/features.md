---

## Remove Telescope — Use Snacks Picker Only
Removed `telescope.lua` since Snacks picker (`snacks.lua`) already provides all the same functionality (find files, grep, buffers, git files, LSP navigation, etc.) with a unified interface.

Test scenarios:
- `<leader>ff` opens Snacks file finder (not Telescope)
- `<leader>fg` opens Snacks grep
- `<leader>fb` opens Snacks buffers
- `gd` goes to LSP definition via Snacks picker

---

## Fix LSP Keybinding Conflict + Add More Servers
Removed duplicate `gd` mapping from `lsp-config.lua` (Snacks picker handles it). Added LSP servers: `html`, `cssls`, `jsonls` with blink.cmp capabilities.

Test scenarios:
- Open an HTML file — LSP features (hover, diagnostics) work
- Open a CSS file — completions and diagnostics work
- Open a JSON file — schema validation and completions work
- `gd` still works (handled by Snacks picker)

---

## Expand Treesitter Parsers
Added parsers: `typescript`, `tsx`, `html`, `css`, `json`, `yaml`, `markdown`, `markdown_inline`, `bash`, `regex`, `toml`. Enabled `auto_install = true` for automatic parser installation.

Test scenarios:
- Open a TypeScript file — syntax highlighting works
- Open a Markdown file — proper highlighting including inline code
- Open any new filetype — parser auto-installs

---

## Gitsigns Integration
Added `gitsigns.nvim` for git diff markers in the sign column. Keybindings: `]h`/`[h` (navigate hunks), `<leader>hs` (stage), `<leader>hr` (reset), `<leader>hp` (preview), `<leader>hb` (blame).

Test scenarios:
- Open a file in a git repo with changes — see `+`, `~`, `_` signs in gutter
- Press `]h` to jump to next changed hunk
- Press `<leader>hp` to preview a hunk diff
- Press `<leader>hb` to see git blame for current line

---

## Auto Pairs
Added `nvim-autopairs` for automatic bracket/quote closing in insert mode.

Test scenarios:
- Type `(` — automatically inserts `)` and places cursor between them
- Type `"` — automatically inserts closing `"`
- Backspace on opening bracket removes the pair

---

## Mini Surround
Added `mini.surround` for surround operations. `sa` (add), `sd` (delete), `sr` (replace).

Test scenarios:
- `saiw"` — surround current word with double quotes
- `sd"` — delete surrounding double quotes
- `sr"'` — replace surrounding `"` with `'`

---

## Comment.nvim
Added `Comment.nvim` for toggling comments. `gcc` (line comment), `gbc` (block comment), `gc` in visual mode.

Test scenarios:
- Press `gcc` on a line — toggles line comment
- Select multiple lines, press `gc` — comments the selection
- Press `gbc` — toggles block comment

---

## Conform.nvim (Formatting)
Added `conform.nvim` for auto-formatting on save. Configured: `stylua` (Lua), `prettierd`/`prettier` (JS/TS/CSS/HTML/JSON/YAML/Markdown). Manual format: `<leader>cf`.

Test scenarios:
- Save a Lua file — auto-formats with stylua (if installed via Mason)
- Save a JS file — auto-formats with prettier (if installed)
- Press `<leader>cf` — manually format current buffer
- Run `:ConformInfo` — shows active formatters

---

## nvim-lint (Linting)
Added `nvim-lint` for async linting. Configured: `eslint_d` for JS/TS files. Lints on BufEnter, BufWritePost, and InsertLeave.

Test scenarios:
- Open a JS/TS file with lint errors — diagnostics appear (if eslint_d installed)
- Fix lint errors and save — diagnostics clear

---

## Todo Comments
Added `todo-comments.nvim` for highlighting TODO/FIXME/HACK/NOTE comments. `]t`/`[t` (navigate), `<leader>st` (search all todos via Snacks).

Test scenarios:
- Write `-- TODO: fix this` in a file — "TODO" is highlighted
- Press `]t` to jump to next todo comment
- Press `<leader>st` to search all todos in the project

---

## Minor Fixes
- Fixed duplicate `vim.opt.list = true` in `vim-options.lua`
- Fixed tab spacing comments (said "2 spaces" but value was 4)
- Replaced `vim.cmd("autocmd ...")` with `vim.api.nvim_create_autocmd`
- Renamed `snaks.lua` to `snacks.lua`

Test scenarios:
- Open Neovim — no duplicate settings warnings
- Open a terminal buffer (`:term`) — line numbers are hidden

---
