# PATH and base environment.
#
# Declared here instead of in the universal `fish_user_paths` on purpose:
# universal variables are machine state that persisted across hosts (this repo
# is stowed on both macOS and Linux), and fish re-prepends every
# `fish_user_paths` entry onto the *inherited* PATH on each shell start. That
# reordering pushed /opt/homebrew/bin ahead of the nvm bin dir inherited by
# nested shells (e.g. tmux panes), so `node` resolved to Homebrew's copy.
#
# The numeric prefix makes this load before conf.d/nvm.fish.
# `fish_add_path --path` targets PATH directly, and without `--move` it skips
# entries that are already present, so nested shells inherit PATH untouched.

set --global --export PYENV_ROOT $HOME/.pyenv

# Consumed by conf.d/nvm.fish, which activates it when no version is inherited.
set --query nvm_default_version || set --global nvm_default_version v24.18.0

fish_add_path --global --path \
    $HOME/.cargo/bin \
    $HOME/.gocode/shims \
    $HOME/.local/share/bob/nvim-bin

switch (uname -s)
    case Darwin
        fish_add_path --global --path $HOME/Library/Python/3.9/bin
    case Linux
        fish_add_path --global --path \
            $HOME/odin-linux-amd64-nightly+2025-04-03
end

# Homebrew is already on PATH via /etc/paths.d/homebrew (path_helper) on macOS.
# Append rather than prepend: prepending re-orders it ahead of the nvm bin dir
# in nested/tmux shells and shadows the active Node version.
if test -d /opt/homebrew/bin
    contains /opt/homebrew/bin $PATH || fish_add_path --global --append /opt/homebrew/bin
end
