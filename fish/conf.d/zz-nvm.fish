# Node/nvm fixups that must run *after* conf.d/nvm.fish (hence the zz prefix).
#
# 1. Re-assert the active version's bin dir at the front of PATH.
# 2. Switch versions on directory change based on .nvmrc / .node-version.

# nvm.fish exports `nvm_current_version`, so nested shells inherit it and its
# startup guard (`! set --query nvm_current_version`) skips activation --
# leaving PATH order to whatever the parent handed down. Two things then
# demote the nvm bin dir behind /opt/homebrew/bin and break `node`:
#
#   * tmux with an empty `default-command` starts `default-shell` as a login
#     shell, and macOS path_helper rebuilds PATH from /etc/paths + /etc/paths.d
#     (which includes /etc/paths.d/homebrew) before appending inherited entries.
#   * any prepend to PATH performed after nvm activated, e.g. `fish_add_path`.
#
# Activation is idempotent here, so just put the dir back in front.
if set --query nvm_current_version nvm_data
    set --local nvm_bin $nvm_data/$nvm_current_version/bin
    if test -d $nvm_bin
        set --local i (contains --index -- $nvm_bin $PATH)
        set --query i[1] && set --erase PATH[$i]
        set --prepend PATH $nvm_bin
    end
end

# Walk up from $dir looking for a pinned version. Implemented here rather than
# reusing nvm.fish's `_nvm_find_up`: that helper is defined inside
# functions/nvm.fish, so it only exists once `nvm` has been autoloaded, and in
# nested shells nvm is never called at startup.
function __nvm_version_file --argument-names dir
    while test -n "$dir"
        for name in .nvmrc .node-version
            if test -f "$dir/$name"
                echo "$dir/$name"
                return 0
            end
        end
        set dir (string replace --regex -- '/[^/]*$' "" $dir)
    end
    return 1
end

# Replaces the bare `nvm use` that config.fish ran at startup, which only
# applied to the launch directory and errored wherever no version file existed.
function __nvm_auto_use --on-variable PWD --description "Activate the Node version pinned by .nvmrc/.node-version"
    status is-command-substitution && return
    set --query nvm_default_version || return

    if set --local file (__nvm_version_file $PWD)
        set --local ver (string trim <$file)
        if test -n "$ver"
            nvm use --silent $ver 2>/dev/null && return
        end
    end

    test "$nvm_current_version" = "$nvm_default_version" && return
    nvm use --silent $nvm_default_version 2>/dev/null
end

status is-interactive && __nvm_auto_use
