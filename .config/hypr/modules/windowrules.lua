--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    name = "start-look-float",
    match = {
        class = "^(nwg-look|org.pulseaudio.pavucontrol)$"
    },
    float = true,
    size = {788, 426},
    center = true
})

hl.window_rule({
    name = "start-nautilus-float",
    match = {
        class = "^(org.gnome.Nautilus)$"
    },
    float = true,
    size = {750, 500},
    center = true
})

hl.window_rule({
    name = "start-costuff-float",
    match = {
        class = "^(org.cachyos.cachyos-pi|org.cachyos.hello)$"
    },
    float = true,
    size = {750, 650},
    center = true
})

hl.window_rule({
    name = "float-picture-in-picture",
    match = {
        title = "(?i)^(picture-in-picture)$"
    },
    float = true,
    size = {480, 270},
    opacity = "1.0 override"
})

hl.window_rule({
    name = "custom-term-opacity",
    match = {
        class = "(?i)^(alacritty)$"
    },
    -- max_size = {750, 500},
    opacity = "0.9 0.8 override"
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.layer_rule({
    name = "notification-animations",
    match = { namespace = "swaync-control-center" },
    animation = "slide right"
})

hl.layer_rule({
    name = "fuzzel-animations",
    match = { namespace = "launcher" },
    animation = "slide top"
})
