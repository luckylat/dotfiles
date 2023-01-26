local apps = require("constraints.apps")

local cmds = {
    editfile = apps.terminal .. "-e " .. apps.editor
}

return cmds
