-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function ()
  -- hl.exec_cmd("waybar &")
  hl.exec_cmd("noctalia")
  hl.exec_cmd("playerctl daemon")
  hl.exec_cmd("awww-daemon &")
  hl.exec_cmd("waypaper --restore")
  hl.exec_cmd("swaync")
  hl.exec_cmd("wl-clip-persist --clipboard regular")
  hl.exec_cmd("hyprctl setcursor 'Capitaine Cursors(Gruvbox)' 24")
  hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Capitaine Cursors(Gruvbox)'")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP HYPRLAND_INSTANCE_SIGNATURE")
end)
