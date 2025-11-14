local wezterm = require("wezterm")
local config = wezterm.config_builder()

function getOS()
	local sep = package.config:sub(1, 1)

	if sep == "\\" then
		return "Windows"
	end

	local handle = io.popen("uname")
	local result = handle:read("*a")

	handle:close()
	result = result:lower()

	if result:find("linux") then
		return "Linux"
	end
	return "macOS"
end

local os_name = getOS()

config.color_scheme = "Batman"
config.font = wezterm.font("JetBrains Mono")
config.window_padding = {
	left = 3,
	right = 3,
	top = 3,
	bottom = 0,
}
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.show_new_tab_button_in_tab_bar = true

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.9

config.cursor_blink_rate = 800
config.default_cursor_style = "SteadyBlock"
config.max_fps = 120

-- windows overwrites
if os_name == "Windows" then
	config.default_domain = "WSL:Ubuntu"
	config.hide_tab_bar_if_only_one_tab = false
end

return config
