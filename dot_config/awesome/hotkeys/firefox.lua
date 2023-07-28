-- Ref
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/hotkeys_popup/keys/firefox.lua
-- https://support.mozilla.org/ja/kb/keyboard-shortcuts-perform-firefox-tasks-quickly

local hotkeys_popup = require("awful.hotkeys_popup.widget")

local firefox_rule = { class = { "firefox" } }

-- color https://coolors.co/palette/f7b267-f79d65-f4845f-f27059-f25c54
for group_name, group_data in pairs({
    ["Firefox: tabs"] = { color = "#F25C54", rule_any = firefox_rule },
    ["Firefox: Addons"] = { color = "#F27059", rule_any = firefox_rule },
    ["Firefox: Tridactyl"] = { color = "#564EC3", rule_any = firefox_rule },
}) do
    hotkeys_popup.add_group_rules(group_name, group_data)
end

local firefox_keys = {
    ["Firefox: Addons"] = {{
        modifiers = { "Mod1", "Shift" },
        keys = {
            m = "(Stylebot) toggle Stylebot"
        }
    }},
    ["Firefox: Tridactyl"] = {{
        modifiers = {},
        keys = {
            o = "open site",
            H = "go previous page",
            L = "go next page",
            d = "close current tab",
            u = "restore previous closed tab",
            ['gt'] = "go previous tab",
            ['gT'] = "go next tab"
        }
    }}
}

hotkeys_popup.add_hotkeys(firefox_keys)
