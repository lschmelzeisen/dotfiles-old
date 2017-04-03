---------------------------
-- gruvbox awesome theme --
-- by Lukas Schmelzeisen --
---------------------------

local os = { getenv = os.getenv }
local gears = require("gears")

local theme                                     = {}

theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/gruvbox-dark-hard"
theme.wallpaper                                 = os.getenv("HOME") .. "/Pictures/Wallpaper/Z1xAr5i.jpg"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"
theme.font                                      = "Misc Tamsyn Regular 10"

theme.colors                                    = {}
theme.colors.bg1                                = "#1D2021"
theme.colors.bg2                                = "#3C3836"
theme.colors.bg3                                = "#504945"
theme.colors.fg1                                = "#EBDBB2"
-- BDAE93
theme.colors.fg2                                = "#A89984"
theme.colors.fg3                                = "#7C6F64"
theme.colors.pink                               = "#D3869B"
theme.colors.red                                = "#FB4934"
theme.colors.orange                             = "#FE8019"
theme.colors.yellow                             = "#FABD2F"
theme.colors.lime                               = "#B8BB26"
theme.colors.green                              = "#8EC07C"
theme.colors.blue                               = "#83A598"

theme.bg_normal                                 = theme.colors.bg1
theme.bg_focus                                  = theme.bg_normal
theme.bg_urgent                                 = theme.bg_normal
theme.bg_minimize                               = theme.bg_normal

theme.bg_systray                                = theme.colors.bg3
theme.bg_clock                                  = theme.colors.bg1
theme.fg_clock                                  = theme.colors.blue
theme.bg_layout                                 = theme.colors.red

theme.fg_normal                                 = theme.colors.fg1
theme.fg_focus                                  = theme.colors.blue
theme.fg_urgent                                 = theme.colors.orange
theme.fg_minimize                               = theme.colors.fg3

theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 10
theme.border_width                              = 2
theme.border_normal                             = theme.colors.bg1
theme.border_focus                              = theme.colors.bg2
theme.border_marked                             = theme.colors.red

theme.bg_prompt                                 = theme.colors.red

theme.taglist_bg_empty                          = theme.colors.bg3
theme.taglist_bg_occupied                       = theme.colors.bg3
theme.taglist_bg_focus                          = theme.colors.bg1
theme.taglist_bg_urgent                         = theme.colors.bg3
theme.taglist_fg_empty                          = theme.colors.fg3
theme.taglist_fg_occupied                       = theme.colors.fg1
theme.taglist_fg_focus                          = theme.colors.red
theme.taglist_fg_urgent                         = theme.colors.orange

theme.titlebar_bg_normal                        = theme.border_normal
theme.titlebar_bg_focus                         = theme.border_focus
theme.titlebar_fg_normal                        = theme.colors.fg1
theme.titlebar_fg_focus                         = theme.colors.fg1

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel                       = nil --theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = nil --theme.dir .. "/icons/square_unsel.png"

-- menu ------------------------------------------------------------------------
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.menu_height                               = 22
theme.menu_width                                = 180

-- titlebar --------------------------------------------------------------------
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

-- layout ----------------------------------------------------------------------
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.layout_centerfair                         = theme.dir .. "/icons/centerfair.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme                                = nil

--local powerline = function(cr)
    --gears.shape.transform(gears.shape.powerline) : translate(0, 0) (cr, 36, 20)
--end
--theme.taglist_shape = powerline

return theme
