local iron_config = {
    config = {
        repl_open_cmd =  "belowright 10 split",
        -- Define your REPL commands here
        repl_definition = {
            python = {
                command = {"ipython", "--no-autoindent"},
            },
            -- Example for Zig, if you want to add it
            zig = {
                command = {"zig", "run"},
            },
        },
        -- Define keymaps for sending code
        keymaps = {
            send_motion = "<space>sc",
            visual_send = "<space>sc",
            send_file = "<space>sf",
            send_line = "<space>sl",
            send_until_cursor = "<space>su",
            send_mark = "<space>sm",
            mark_motion = "<space>mc",
            mark_visual = "<space>mc",
            remove_mark = "<space>md",
        },
    },
}

require("iron.core").setup(iron_config)
