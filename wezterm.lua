local wezterm = require 'wezterm'
local act = wezterm.action
return {
    --leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 500 },
    --disable_default_key_bindings = true,
    -- keys = { 
    --     { key = '[', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(-1) },
    --     { key = ']', mods = 'SHIFT|SUPER', action = act.ActivateTabRelative(1) },
    --     { key = 'C', mods = 'CTRL', action = act.CopyTo 'Clipboard' },
    --     { key = 'c', mods = 'SUPER', action = act.CopyTo 'Clipboard' },
    -- },
    --keys = {
    --    { 
    --        key = 'v',
    --        mods = 'LEADER|SHIFT',
    --        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    --},

    prefer_egl = false,

    -- Cursor
    default_cursor_style = 'BlinkingBar',
    cursor_blink_rate = 800,

    -- Fonts
    font = wezterm.font('JetBrains Mono'),
    font_size = 15.0,

    -- Colors
    color_scheme = "Monokai (base16)",

    colors = {
        scrollbar_thumb = '#444444',
    },

    -- Background
    window_background_image = "/Users/payton/.doom.d/wallpapers/emacs_wallpaper.png",
    window_background_image_hsb = {
        -- Darken the background image by reducing it to 1/3rd
    brightness = 0.05,
    },

    -- Tabs
    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = false,

    -- Windows
    -- broken --- wezterm.window.set_position(1440, 900),
    window_padding = {
    left = "2px",
    right = font_size,
    top = 0,
    bottom = 0,
  },
  adjust_window_size_when_changing_font_size = false,

  -- Options
    enable_scroll_bar = true,
    pane_focus_follows_mouse = true,
    check_for_updates = false,

}