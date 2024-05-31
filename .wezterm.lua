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

line_numbers = true

config.window_decorations = "RESIZE"
-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"
config.font_size = 12
config.font = wezterm.font("Fira Code", { weight = "Bold", italic = false })
-- config.window_background_opacity = 0.75
-- config.macos_window_background_blur = 20

config.default_prog = { "/bin/zsh" }
config.hide_tab_bar_if_only_one_tab = true
config.hide_mouse_cursor_when_typing = true
config.window_close_confirmation = "NeverPrompt"

-- and finally, return the configuration to wezterm
return config
