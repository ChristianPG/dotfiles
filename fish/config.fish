bind \cf "~/.config/tmux/tmux-sessionizer"

if status is-interactive
    # Commands to run in interactive sessions can go here
    # Node is handled by conf.d/nvm.fish ($nvm_default_version) and
    # conf.d/zz-nvm.fish (PATH re-assert + .nvmrc/.node-version per directory).
end

# starship init fish | source

alias gitui="gitui -t frappe.ron"

# pyenv init - fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.fish.inc' ]; . '~/google-cloud-sdk/path.fish.inc'; end
