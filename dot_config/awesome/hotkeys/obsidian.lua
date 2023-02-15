-- Ref

local hotkeys_popup = require("awful.hotkeys_popup.widget")

local obsidian_rule = { class = { "obsidian" } }

-- color TBD
for group_name, group_data in pairs({
    ["Obsidian"] = { color = "#836EDA", rule_any = obsidian_rule },
}) do
    hotkeys_popup.add_group_rules(group_name, group_data)
end

local obsidian_keys = {
    ["Obsidian"] = {{
        modifiers = { "Mod1" },
        keys = {
            ["1..9"] = "go to tab"
        }
    }, {
        modifiers = { "Ctrl" },
        keys = {
            n = "(Advanced New Tab): create new leaf",
            o = "open file",
            t = "new tab",
            w = "close tab",
            [','] = "open setting",
            ['Tab'] = "next tab"
        }
    }, {
        modifiers = { "Ctrl", "Shift" },
        keys = {
            t = "open closed tab recently",
            ['Tab' ] = "previous tab"
        }
    }, {
        modifiers = { "Ctrl", "Alt" },
        keys = {
            r = "(original) force reload"
        }
    }}
}

hotkeys_popup.add_hotkeys(obsidian_keys)
