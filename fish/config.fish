bind \cf "~/.config/tmux/tmux-sessionizer"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set --universal nvm_default_version lts/jod
nvm use
# starship init fish | source

alias gitui="gitui -t frappe.ron"

pyenv init - fish | source
