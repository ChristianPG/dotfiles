-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Urple'

-- set to true to hide the tab bar when there is only
-- a single tab in the window
config.hide_tab_bar_if_only_one_tab = true

config.native_macos_fullscreen_mode = true

-- config.window_background_gradient = {
--   colors = { '#190324', '#2e1d40' },
--   -- Specifices a Linear gradient starting in the top left corner.
--   orientation = { Linear = { angle = -45.0 } },
-- }

config.color_scheme = 'Catppuccin Frappe'
--
-- and finally, return the configuration to wezterm
return config
