
local wezterm = require('wezterm')
local keybindings = require("keybindings")
local utils = require("utils")

return {
    keys = keybindings,

    audible_bell = "Disabled",
    prefer_egl = false,

    -- Cursor
    default_cursor_style = 'BlinkingBar',
    cursor_blink_rate = 800,

    -- Fonts
    font = utils.by_os({
        mac = wezterm.font('JetBrains Mono'),
        linux = wezterm.font('JetBrains Mono', {weight = "Light"}),
    }),

    font_size = utils.by_os({mac = 17.0, linux = 10.0}),

    -- Colors
    color_scheme = "Monokai (base16)",

    colors = {
        scrollbar_thumb = '#444444',
    },

    -- Background
    window_background_image = utils.by_os({
        mac = "/Users/payton/.doom.d/wallpapers/emacs_wallpaper.png"}),

    window_background_image_hsb = utils.by_os({
        mac = {
            -- Darken the background image by reducing it to 1/3rd
            brightness = 0.05,
    }}),

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
