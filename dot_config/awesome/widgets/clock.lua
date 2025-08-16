local wibox = require("wibox")

-- Create a textclock widget
local clock = wibox.widget.textclock('<span font="sand 20">%m/%d(%a) %H:%M:%S</span>', 1)
return clock
