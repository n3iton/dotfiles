# The following lines were added by Docker Desktop to add commands to your PATH.
export PATH="$PATH:/Users/nikita/.docker/bin"
# End of Docker Desktop section.

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

fish_vi_key_bindings

abbr -a k kubectl

set EDITOR nvim

fish_add_path /opt/homebrew/bin
fish_add_path ~/go/bin
fish_add_path ~/.trdl/repositories/flint/releases/2.1.3/darwin-arm64/bin

if type -q d8
    d8 completion fish | source
end

set -ga fish_complete_path /opt/homebrew/share/fish/vendor_completions.d

if type -q starship
    starship init fish | source
end

if type -q direnv
    direnv hook fish | source
end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/nikita/.lmstudio/bin
# End of LM Studio CLI section

