local wibox = require("wibox")

-- Create a textclock widget
local clock = wibox.widget.textclock('%m/%d(%a) %H:%M:%S', 1)

return clock
