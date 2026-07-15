-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function () 
  hl.exec_cmd("~/.config/hypr/xdg-start.sh")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("hyprctl switchxkblayout current 1")
  hl.exec_cmd("waybar & hyprpaper & swaync")
  hl.exec_cmd("discord --start-minimized")
end)

