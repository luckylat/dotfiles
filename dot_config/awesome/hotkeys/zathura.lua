-- Ref

local hotkeys_popup = require("awful.hotkeys_popup.widget")

local zathura_rule = { class = { "Zathura" } }

-- color TBD
for group_name, group_data in pairs({
    ["Zathura"] = { color = "#70B7BA", rule_any = zathura_rule },
}) do
    hotkeys_popup.add_group_rules(group_name, group_data)
end

local zathura_keys = {
    ["Zathura"] = {{
        modifiers = {  },
        keys = {
            j = "down",
            k = "up",
            q = "quit",
           ['[n]='] = "zoom to n%",
           ['zI'] = "ZoomIn",
           ['zO'] = "ZoomOut",
        }
    }, {
        modifiers = { "Ctrl" },
        keys = {
            f = "1-page down",
            b = "1-page up"
        }
    }}
}

hotkeys_popup.add_hotkeys(zathura_keys)
