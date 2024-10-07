-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Latte"
config.hide_tab_bar_if_only_one_tab = true
config.default_cwd = "/home/eduardo/Documents/Projects/"
config.default_prog = {
	"/bin/zsh",
	"-l",
	"-c",
	'zellij --layout "compact" options --theme "catppuccin-latte"',
}

-- and finally, return the configuration to wezterm
return config
