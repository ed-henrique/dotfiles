-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Projects directory
local projects_dir = os.getenv("HOME") .. "/Projects"

-- Configs

-- Visual
config.color_scheme = "Catppuccin Latte"
config.hide_tab_bar_if_only_one_tab = true

-- Always start terminal in projects dir
config.default_cwd = projects_dir

-- Always start new terminal in zellij session
config.default_prog = {
	"/bin/zsh",
	"-l",
	"-c",
	'zellij --layout "compact" options --theme "catppuccin-latte"',
}

-- return the configuration to wezterm
return config
