-- ~/.dotfiles/wezterm/wezterm.lua
local wezterm = require("wezterm")

return {
	-- Set font and font size
	font = wezterm.font("Zed Mono Extended"),
	font_size = 15.0,

	-- Set window padding
	window_padding = {
		left = "1cell",
		right = "1cell",
		top = "1.5cell",
		bottom = "0.2cell",
	},
	window_frame = {
		border_left_width = "1px",
		border_right_width = "1px",
		border_bottom_height = "1px",
		border_top_height = "1px",
		border_left_color = "#191B29",
		border_right_color = "#191B29",
		border_bottom_color = "#191B29",
		border_top_color = "#191B29",
	},

	-- Enable scrollback
	enable_scroll_bar = false,

	-- Set initial rows and columns
	initial_rows = 40,
	initial_cols = 120,

	-- Set the default program to run
	default_prog = { "/opt/homebrew/bin/fish", "-l" },

	-- Enable or disable the tab bar
	enable_tab_bar = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_max_width = 20,

	-- Set window decorations
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",

	-- Theme
	color_scheme = "Tokyo Night",
	window_background_opacity = 0.90,
	macos_window_background_blur = 30,
	colors = {
		background = "#051529",
	},

	-- Keybindings
}
