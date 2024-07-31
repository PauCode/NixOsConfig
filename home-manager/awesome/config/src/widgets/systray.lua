--------------------------------
-- This is the power widget --
--------------------------------

-- Awesome Libs
local awful = require("awful")
local color = require("src.theme.colors")
local dpi = require("beautiful").xresources.apply_dpi
local gears = require("gears")
local wibox = require("wibox")

require("src.core.signals")

return function(s)
    local systray_widget = wibox.widget.systray()
    systray_widget.set_screen(s)
    systray_widget.id = "tray"

	local systray = wibox.widget({
		{
			{
				systray_widget,
				widget = wibox.container.margin,
				id = "st",
			},
			strategy = "exact",
			layout = wibox.container.constraint,
			id = "container",
		},
		widget = wibox.container.background,
		shape = function(cr, width, height)
			gears.shape.rounded_rect(cr, width, height, 5)
		end,
		bg = color["nord0"],
	})
	-- Signals
	Hover_signal(systray.container, color["nord11"], color["nord0"])

	awesome.connect_signal("systray::update", function()
		local num_entries = awesome.systray()

		if num_entries == 0 then
			systray.container.st:set_margins(0)
		else
			systray.container.st:set_margins(dpi(6))
		end
	end)

	systray.container.st.widget:set_base_size(dpi(20))

	return systray
end