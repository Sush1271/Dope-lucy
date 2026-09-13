--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
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

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "codium",
    match = { class = "codium" },
    opacity = 0.90
})

hl.window_rule({
    name  = "float-lucid-settings",
    match = { class = "org.quickshell", title = "Lucid Settings" },

    float  = true,
    size   = "1180 800",
    center = true,
})


--------------------------------
---- WORKSPACE ASSIGNMENTS -----
--------------------------------

-- HDMI-A-1 → workspaces 1-5
for i = 1, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "HDMI-A-1",
        persistent = true,
    })
end

-- DP-1 → workspaces 6-10
for i = 6, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-1",
        persistent = true,
    })
end
