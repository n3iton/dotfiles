if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

abbr -a k kubectl

fish_add_path /opt/homebrew/bin

starship init fish | source
