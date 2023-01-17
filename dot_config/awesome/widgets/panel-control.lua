

local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")

local naughty = require("naughty")

local config_dir = gears.filesystem.get_configuration_dir()
local icon_dir = config_dir .. 'icons/'

local control_panel = awful.widget.button({image = icon_dir .. 'test.png'})
control_panel:buttons(gears.table.join(
    control_panel:buttons(),
    awful.button({}, 1, nil, function()
        awful.popup {
            widget = {
                {
                    {
                        text   = 'foobar',
                        widget = wibox.widget.textbox
                    },
                    {
                        {
                            text   = 'foobar',
                            widget = wibox.widget.textbox
                        },
                        bg     = '#ff00ff',
                        clip   = true,
                        shape  = gears.shape.rounded_bar,
                        widget = wibox.widget.background
                    },
                    {
                        value         = 0.5,
                        forced_height = 30,
                        forced_width  = 100,
                        widget        = wibox.widget.progressbar
                    },
                    layout = wibox.layout.fixed.vertical,
                },
                margins = 10,
                widget  = wibox.container.margin
            },
            border_color = '#00ff00',
            border_width = 5,
            ontop = true,
            placement    = awful.placement.top_right + awful.placement.no_offscreen,
            shape        = gears.shape.rounded_rect,
            visible      = true,
        }
    end)
))
return control_panel
