local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Batman"
config.font = wezterm.font("JetBrains Mono")
config.window_padding = {
	left = 0,
	right = 3,
	top = 3,
	bottom = 0,
}
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.show_new_tab_button_in_tab_bar = false

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.9

config.ssh_backend = "LibSsh"
config.ssh_domains = {
	{
		name = "kantjes",
		remote_address = "192.168.178.177",
		username = "kantjes",
		remote_wezterm_path = "/usr/bin/wezterm",
		multiplexing = "None",
	},
}

config.cursor_blink_rate = 800
config.default_cursor_style = "SteadyBlock"
config.max_fps = 120

return config
