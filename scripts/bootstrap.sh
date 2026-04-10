#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"

backup_path() {
  local target_path="$1"
  local backup_path="${target_path}.pre-dotfiles-backup"
  local suffix=1

  while [[ -e "$backup_path" || -L "$backup_path" ]]; do
    backup_path="${target_path}.pre-dotfiles-backup.${suffix}"
    suffix=$((suffix + 1))
  done

  mv "$target_path" "$backup_path"
  printf 'moved %s -> %s\n' "$target_path" "$backup_path"
}

link_path() {
  local source_path="$1"
  local target_path="$2"

  mkdir -p "$(dirname "$target_path")"

  if [[ -L "$target_path" ]]; then
    local current_target
    current_target="$(readlink "$target_path")"
    if [[ "$current_target" == "$source_path" ]]; then
      printf 'ok %s -> %s\n' "$target_path" "$source_path"
      return
    fi
    backup_path "$target_path"
  elif [[ -e "$target_path" ]]; then
    backup_path "$target_path"
  fi

  ln -s "$source_path" "$target_path"
  printf 'linked %s -> %s\n' "$target_path" "$source_path"
}

link_path "$repo_root/alacritty" "$config_home/alacritty"
link_path "$repo_root/fish" "$config_home/fish"
link_path "$repo_root/nvim" "$config_home/nvim"
link_path "$repo_root/sketchybar" "$config_home/sketchybar"
link_path "$repo_root/skhd" "$config_home/skhd"
link_path "$repo_root/yabai" "$config_home/yabai"
link_path "$repo_root/tmux/.tmux.conf" "$HOME/.tmux.conf"
