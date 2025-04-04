-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 21

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.65
config.macos_window_background_blur = 15

return config
