-- Ref

local hotkeys_popup = require("awful.hotkeys_popup.widget")

local vim_rule = { name = { "vim", "VIM" } }

-- color TBD
for group_name, group_data in pairs({
    ["VIM: Plugin"] = { color = "#B1E5F2", rule_any = vim_rule },
}) do
    hotkeys_popup.add_group_rules(group_name, group_data)
end

local vim_keys = {
    ["VIM: Plugin"] = {{
        modifiers = {},
        keys = {
            ["\\g"] = "execute lazygit",
            ["\\o"] = "open file",
        }
    }, {
        modifiers = {"Alt"},
        keys = {
            [","] = "go previous tab",
            ["."] = "go next tab",
            ["1-9"] = "go tab x"
        }
    }}
}

hotkeys_popup.add_hotkeys(vim_keys)
