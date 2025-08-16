local wibox = require("wibox")
local awful = require("awful")
local naughty = require("naughty")

print("[CMUS Widget] stdout:", stdout)

local cmus = awful.widget.watch("cmus-remote -Q", 15, function(widget, stdout)
    
    local title = stdout:match("tag title%s+([^\n]+)") 
    local artist = stdout:match("tag artist%s+([^\n]+)") 
    local album = stdout:match("tag album%s+([^\n]+)") 
    local status = stdout:match("status%s+([^\n]+)")
    local filepath = stdout:match("file%s+([^\n]+)")

    local widget_text = ""

    if status == "playing" then
        if title == nil or artist == nil or album == nil then
            widget_text = "Now Playing: " .. filepath
        else
            widget_text = "Now Playing: " .. title .. " - " .. artist .. " [" .. album .. "]"
        end
    else
        widget_text = "CMUS is not playing"
    end

    widget:set_markup("<span font='sans 20'>" .. widget_text .. "</span>")
end)


return cmus
