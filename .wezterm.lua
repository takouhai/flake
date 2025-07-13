local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.color_scheme = 'Dracula+'
config.font = wezterm.font 'ComicShannsMono Nerd Font Mono'
return config
