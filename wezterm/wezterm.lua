-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Frappe"

-- set to true to hide the tab bar when there is only
-- a single tab in the window
config.hide_tab_bar_if_only_one_tab = true

config.native_macos_fullscreen_mode = true

config.window_padding = {
	left = "5px",
	right = "5px",
	top = "5px",
	bottom = "0px",
}

config.window_decorations = "NONE"
config.use_fancy_tab_bar = false

-- Use Fish as the default shell
if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
	config.default_prog = { "/usr/bin/fish", "-l" }
else
	config.default_prog = { "/usr/local/bin/fish", "-l" }
end

-- and finally, return the configuration to wezterm
return config
