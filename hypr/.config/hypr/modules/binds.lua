---------------------
---- MY PROGRAMS ----
---------------------
local terminal    = "ghostty"
local terminal2   = "kitty"
local fileManager = "nautilus"
local wallpaperManager = "waypaper"
local bar_toggle = "~/.config/waybar/scripts/reload_waybar.sh"

---------------------
---- KEYBINDINGS ----
---------------------

local super = "SUPER" -- Sets "SUPER" key (windows key) as main modifier

-- Core binds
hl.bind(super .. "+Space", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(super .. "+S", hl.dsp.exec_cmd("~/.config/rofi/scripts/powermenu.sh"))
-- hl.bind(super .. "+comma", hl.dsp.exec_cmd("settings-toggle"))
-- hl.bind("ALT + Tab", hl.dsp.exec_cmd("window-switcher"))
hl.bind(super .. " + SHIFT + B", hl.dsp.exec_cmd(bar_toggle))
-- hl.bind(super .. " + D", hl.dsp.exec_cmd("dock-toggle"))

-- Media keys
-- hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
-- hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
-- hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
-- hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
-- hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"))

hl.bind(super .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(super .. " + C", hl.dsp.window.kill())
hl.bind(super .. " + F", hl.dsp.window.fullscreen())
hl.bind(super .. " + T", hl.dsp.exec_cmd(terminal2))
hl.bind(super .. " + SHIFT + W", hl.dsp.exec_cmd(wallpaperManager))
-- hl.bind(super .. " + N", hl.dsp.exec_cmd(reload_bar))
hl.bind(super .. " + N", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind(super .. " + B", hl.dsp.exec_cmd("zen-browser --password-store=basic"))
hl.bind(super .. " + G", hl.dsp.exec_cmd("gimp"))
-- hl.bind(super .. " + P", hl.dsp.exec_cmd("shotwell"))
hl.bind("CTRL" .. " + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(super .. " + Q", hl.dsp.window.close())
hl.bind(super .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(super .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(super .. " + P", hl.dsp.window.pseudo())
hl.bind(super .. " + J", hl.dsp.exec_cmd("togglesplit"))    -- dwindle only
hl.bind(super .. " + W", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind(super .. " + R", hl.dsp.exec_cmd("hyprshot -m region --raw | satty --filename -"))

-- Move focus with super + arrow keys
hl.bind(super .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(super .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(super .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(super .. " + J",  hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(super .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(super .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
-- hl.bind(super .. " + S",         hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(super .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with super + scroll
hl.bind(super .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(super .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with super + LMB/RMB and dragging
hl.bind(super .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(super .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(super .. " + SHIFT + H", function()
    hl.dispatch(hl.dsp.window.move({ direction = "left" }))    -- Change focus to another window
    hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring it to the top
end)
hl.bind(super .. " + SHIFT + L", function()
    hl.dispatch(hl.dsp.window.move({ direction = "right" }))    -- Change focus to another window
    hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring it to the top
end)
hl.bind(super .. " + SHIFT + K", function()
    hl.dispatch(hl.dsp.window.move({ direction = "up" }))    -- Change focus to another window
    hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring it to the top
end)
hl.bind(super .. " + SHIFT + J", function()
    hl.dispatch(hl.dsp.window.move({ direction = "down" }))    -- Change focus to another window
    hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring it to the top
end)

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
