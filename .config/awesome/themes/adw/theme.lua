---------------------------
-- adw (libadwaita) awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path_system = gfs.get_themes_dir()
local themes_path = "~/.config/awesome/themes/"

local theme = {}

theme.font          = "Roboto Mono 10"

theme.bg_normal     = "#303030"
theme.bg_focus      = "#255A9B"
theme.bg_urgent     = "#7d4c10"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = "#101010"
theme.border_focus  = "#3a8cf0"
theme.border_marked = "#7d4c10"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
  taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
  taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path_system.."default/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(170)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."adw/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."adw/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."adw/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."adw/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."adw/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."adw/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."adw/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."adw/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."adw/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."adw/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."adw/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."adw/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."adw/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."adw/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."adw/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."adw/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."adw/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."adw/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."adw/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."adw/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."adw/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."adw/layouts/fairhw.png"
theme.layout_fairv = themes_path.."adw/layouts/fairvw.png"
theme.layout_floating  = themes_path.."adw/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."adw/layouts/magnifierw.png"
theme.layout_max = themes_path.."adw/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."adw/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."adw/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."adw/layouts/tileleftw.png"
theme.layout_tile = themes_path.."adw/layouts/tilew.png"
theme.layout_tiletop = themes_path.."adw/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."adw/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."adw/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."adw/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."adw/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."adw/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."adw/layouts/cornersew.png"

-- Generate Awesome icon:
--[[theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
) ]]--

-- theme.awesome_icon = themes_path.."adw/awesome_icon.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
