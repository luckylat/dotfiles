
require("awful.hotkeys_popup.keys.vim")

local keys = {
    firefox  = require('hotkeys.firefox'),
    obsidian = require('hotkeys.obsidian'),
    vim      = require('hotkeys.vim'),
    zathura  = require('hotkeys.zathura'),
}

return keys
