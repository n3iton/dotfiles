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
fish_add_path -g ~/bin

# flint ставится через trdl, и в пути к нему есть версия, поэтому берём путь у самого trdl
# (trdl use умеет готовить скрипт только для sh и pwsh)
if type -q trdl
    set -l flint_bin (trdl bin-path flint 2 stable 2>/dev/null)
    and fish_add_path -g $flint_bin
end

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

