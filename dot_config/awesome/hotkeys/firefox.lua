-- Ref
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/hotkeys_popup/keys/firefox.lua
-- https://support.mozilla.org/ja/kb/keyboard-shortcuts-perform-firefox-tasks-quickly

local hotkeys_popup = require("awful.hotkeys_popup.widget")

local firefox_rule = { class = { "firefox" } }

-- color https://coolors.co/palette/f7b267-f79d65-f4845f-f27059-f25c54
for group_name, group_data in pairs({
    ["Firefox: tabs"] = { color = "#F25C54", rule_any = firefox_rule },
    ["Firefox: Addons"] = { color = "#F27059", rule_any = firefox_rule },
}) do
    hotkeys_popup.add_group_rules(group_name, group_data)
end

local firefox_keys = {
    ["Firefox: tabs"] = {{
        modifiers = { "Mod1" },
        keys = {
            ["1..9"] = "go to tab"
        }
    }, {
        modifiers = { "Ctrl" },
        keys = {
            t = "new tab",
            w = "close tab",
            ['Tab'] = "next tab"
        }
    }, {
        modifiers = { "Ctrl", "Shift" },
        keys = {
            t = "open closed tab recently",
            ['Tab' ] = "previous tab"
        }
    }},
    ["Firefox: Addons"] = {{
        modifiers = { "Mod1", "Shift" },
        keys = {
            m = "(Stylebot) toggle Stylebot"
        }
    }}
}

hotkeys_popup.add_hotkeys(firefox_keys)
