complete -c alacritty -n "__fish_use_subcommand" -l embed -d 'Defines the X11 window ID (as a decimal integer) to embed Alacritty within'
complete -c alacritty -n "__fish_use_subcommand" -l config-file -d 'Specify alternative configuration file [default: $XDG_CONFIG_HOME/alacritty/alacritty.yml]'
complete -c alacritty -n "__fish_use_subcommand" -l socket -d 'Path for IPC socket creation'
complete -c alacritty -n "__fish_use_subcommand" -s o -l option -d 'Override configuration file options [example: cursor.style=Beam]'
complete -c alacritty -n "__fish_use_subcommand" -l working-directory -d 'Start the shell in the specified working directory'
complete -c alacritty -n "__fish_use_subcommand" -s e -l command -d 'Command and args to execute (must be last argument)'
complete -c alacritty -n "__fish_use_subcommand" -s t -l title -d 'Defines the window title [default: Alacritty]'
complete -c alacritty -n "__fish_use_subcommand" -l class -d 'Defines window class/app_id on X11/Wayland [default: Alacritty]'
complete -c alacritty -n "__fish_use_subcommand" -l print-events -d 'Print all events to stdout'
complete -c alacritty -n "__fish_use_subcommand" -l ref-test -d 'Generates ref test'
complete -c alacritty -n "__fish_use_subcommand" -s q -d 'Reduces the level of verbosity (the min level is -qq)'
complete -c alacritty -n "__fish_use_subcommand" -s v -d 'Increases the level of verbosity (the max level is -vvv)'
complete -c alacritty -n "__fish_use_subcommand" -l hold -d 'Remain open after child process exit'
complete -c alacritty -n "__fish_use_subcommand" -s h -l help -d 'Prints help information'
complete -c alacritty -n "__fish_use_subcommand" -s V -l version -d 'Prints version information'
complete -c alacritty -n "__fish_use_subcommand" -f -a "msg" -d 'Available socket messages'
complete -c alacritty -n "__fish_use_subcommand" -f -a "help" -d 'Prints this message or the help of the given subcommand(s)'
complete -c alacritty -n "__fish_seen_subcommand_from msg" -s s -l socket -d 'IPC socket connection path override'
complete -c alacritty -n "__fish_seen_subcommand_from msg" -s h -l help -d 'Prints help information'
complete -c alacritty -n "__fish_seen_subcommand_from msg" -s V -l version -d 'Prints version information'
complete -c alacritty -n "__fish_seen_subcommand_from msg" -f -a "create-window" -d 'Create a new window in the same Alacritty process'
complete -c alacritty -n "__fish_seen_subcommand_from msg" -f -a "help" -d 'Prints this message or the help of the given subcommand(s)'
complete -c alacritty -n "__fish_seen_subcommand_from create-window" -l working-directory -d 'Start the shell in the specified working directory'
complete -c alacritty -n "__fish_seen_subcommand_from create-window" -s e -l command -d 'Command and args to execute (must be last argument)'
complete -c alacritty -n "__fish_seen_subcommand_from create-window" -s t -l title -d 'Defines the window title [default: Alacritty]'
complete -c alacritty -n "__fish_seen_subcommand_from create-window" -l class -d 'Defines window class/app_id on X11/Wayland [default: Alacritty]'
complete -c alacritty -n "__fish_seen_subcommand_from create-window" -l hold -d 'Remain open after child process exit'
complete -c alacritty -n "__fish_seen_subcommand_from create-window" -s h -l help -d 'Prints help information'
complete -c alacritty -n "__fish_seen_subcommand_from create-window" -s V -l version -d 'Prints version information'
complete -c alacritty -n "__fish_seen_subcommand_from help" -s h -l help -d 'Prints help information'
complete -c alacritty -n "__fish_seen_subcommand_from help" -s V -l version -d 'Prints version information'
complete -c alacritty -n "__fish_seen_subcommand_from help" -s h -l help -d 'Prints help information'
complete -c alacritty -n "__fish_seen_subcommand_from help" -s V -l version -d 'Prints version information'