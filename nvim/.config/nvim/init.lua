--- Load vim options first
require("config.vim-options")

-- Configure / load lazy on start
-- Will load the file, lua/config/lazy.lua on start,
-- in lua config.lazy = config/lazy.lua
require("config.lazy")

-- Load Keybindings
require("config.vim-keybindings")
