local wezterm = require('wezterm')
local act = wezterm.action

return {
    { key = "h",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection("Left")
    },
    {
        key = "l",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection("Right")
    },
    {
        key = "k",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection("Up")
    },
    {
        key = "j",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection("Down")
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
    },
    {
        key = "r",
        mods = "CTRL|SHIFT",
        action = act.ShowLauncherArgs({ flags =  "FUZZY | WORKSPACES", title = nil}),
    },
    {
        key = 'N',
        mods = 'CTRL|SHIFT',
        action = act.PromptInputLine {
          description = wezterm.format {
            { Attribute = { Intensity = 'Bold' } },
            { Foreground = { AnsiColor = 'Fuchsia' } },
            { Text = 'Enter name for new workspace' },
          },
          action = wezterm.action_callback(function(window, pane, line)
            -- line will be `nil` if they hit escape without entering anything
            -- An empty string if they just hit enter
            -- Or the actual line of text they wrote
            if line then
              window:perform_action(
                act.SwitchToWorkspace {
                  name = line,
                },
                pane
              )
            end
          end),
        },
    },
}
