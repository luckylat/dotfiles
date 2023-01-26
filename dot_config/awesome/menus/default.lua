local awful = require("awful")
local beautiful = require("beautiful")
local val = require("constraints")

local myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", val.apps.terminal .. " -e man awesome" },
   { "edit config", val.cmds.editfile .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

local mymainmenu = awful.menu({ 
    items = { 
        { "awesome", myawesomemenu, beautiful.awesome_icon },
        { "open terminal", val.apps.terminal }
    }
})

return mymainmenu


