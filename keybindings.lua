local wezterm = require('wezterm')
local act = wezterm.action

return {
    { key = "h",
        mods = "CTRL",
        action = act.ActivatePaneDirection("Left")
    },
    {
        key = "l",
        mods = "CTRL",
        action = act.ActivatePaneDirection("Right")
    },
    {
        key = "l",
        mods = "CTRL",
        action = act.ActivatePaneDirection("Right")
    },
    {
        key = "\\",
        mods = "CTRL",
        action = act.SplitHorizontal({domain = "CurrentPaneDomain"})
    },
    {
        key = "\'",
        mods = "CTRL",
        action = act.SplitVertical({domain = "CurrentPaneDomain"})
    },
    {
        key = "s",
        mods = "CTRL",
        action = act.RotatePanes("CounterClockwise")
    },
    {
        key = "s",
        mods = "CTRL|SHIFT",
        action = act.RotatePanes("Clockwise")
    }
}
