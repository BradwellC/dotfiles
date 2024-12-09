-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'catppuccin-mocha'

config.font = wezterm.font "JetBrainsMono NFM"
config.font_size = 14

config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "RESIZE"

config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
