# dotfiles

Personal configuration for:

- `alacritty`
- `fish`
- `nvim`
- `sketchybar`
- `skhd`
- `tmux`
- `yabai`

## Structure

- `alacritty/`: terminal config
- `fish/`: shell config, functions, and completions
- `nvim/`: plain Neovim config with `lazy.nvim`
- `sketchybar/`, `skhd/`, `yabai/`: macOS window manager and status bar config
- `tmux/`: tmux config
- `scripts/`: bootstrap helpers

Machine-local settings should stay out of Git. Use:

- `fish/local.fish`

This repo intentionally does not track:

- generated Neovim plugin files
- shell runtime state like `fish/fish_variables`
- backup files

## Bootstrap

Run:

```sh
./scripts/bootstrap.sh
```

This creates symlinks from this repo into the expected config locations under
`$HOME`.

If a config path already exists, the script moves it aside to a
`.pre-dotfiles-backup` path before creating the symlink.

After that:

```sh
nvim +Lazy sync +qa
```
