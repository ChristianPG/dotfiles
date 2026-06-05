# Symlinked Dotfiles

Dotfiles for the apps I use, managed with [GNU Stow](https://www.gnu.org/software/stow/).

Instead of copying configs into `~/.config/`, this repo keeps everything in one place and symlinks it with a single command. Each subdirectory mirrors a `~/.config/<program>/` folder.

| Directory     | What it configures                    | Omarchy | macOS |
|---------------|---------------------------------------|---------|-------|
| `aerospace/`  | Aerospace (macOS window manager)      | No      | Yes   |
| `hypr/`       | Hyprland (Wayland compositor)         | Yes     | No    |
| `waybar/`     | Waybar (status bar)                   | Yes     | No    |
| `nvim/`       | Neovim (editor)                       | Yes     | Yes   |
| `tmux/`       | tmux (terminal multiplexer)           | Yes     | Yes   |
| `fish/`       | Fish shell                            | Yes     | Yes   |
| `wezterm/`    | WezTerm (terminal emulator)           | Yes     | Yes   |
| `gitui/`      | gitui (Git TUI client)                | Yes     | Yes   |
| `yazi/`       | Yazi (Terminal file manager)          | Yes     | Yes   |

### First install Stow and then create the symlinks to all the configuration directories:
```bash
stow .
```

### If there are changes in the config files done by the apps or system updates, you can adopt the changes and then review through git:
```bash
stow . --adopt && git status
```
