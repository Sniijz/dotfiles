if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

# JS bun package manager
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# rust cargo package manager
set -gx PATH $PATH /home/sniijz/.cargo/bin

# Aliases
alias ll="exa -alh"
alias tree="exa --tree"

