# only enable vi key bindings if connected to a keyboard
if status is-interactive
    set fish_greeting
    fish_vi_key_bindings
    starship init fish | source # source starship
    zoxide init --cmd j fish | source # source zoxide

    # source the completions for tauri
    source ~/.config/fish/completions/tauri.fish
end

fish_add_path $HOME/go/bin # go
fish_add_path $HOME/.bun/bin # bun
fish_add_path /opt/homebrew/bin # homebrew
fish_add_path $HOME/.config/.foundry/bin # foundry
fish_add_path $HOME/.zig/zig-macos # zig
fish_add_path $HOME/.local/bin # local scripts

# `set -U`: universal variable shared across fish sessions (not exported)
set -U fish_color_command blue

# `set -Ux`: universal exportable variable. and is available
# to child processes.
set -Ux RUST_LOG debug
set -Ux RUST_BACKTRACE 0

# Bun
set -Ux BUN_INSTALL $HOME/.bun

# Eza
set -Ux EZA_CONFIG_DIR "$HOME/.config/eza"

# Editor
set -Ux EDITOR nvim

# XDG Specs
set -Ux XDG_CONFIG_HOME ~/.config
set -Ux XDG_DATA_HOME ~/.local/share
set -Ux XDG_STATE_HOME ~/.local/state
set -Ux XDG_CACHE_HOME ~/.cache

# Homebrew update time (never auto update)
set -Ux HOMEBREW_AUTO_UPDATE_SECS 9999999999

# Binds history pager to `C-r` just like the old times
bind -M insert \cr 'commandline -f history-pager'
bind -M default \cr 'commandline -f history-pager'

# Git abbreviations
abbr -a gc "git checkout"
abbr -a gs "git status"
abbr -a gb "git branch"
abbr -a glog "git log --color --graph --pretty --abbrev-commit"
abbr -a gd "git diff | delta"
abbr -a grh "git reset --hard"
abbr -a gca! "git commit --verbose --all --amend"
abbr -a gpf "git push --force"
abbr -a grv "git remote -v"
abbr -a gfa "git fetch --all --prune"

abbr -a gaa "git add ."
abbr -a gcm "git commit -am" # stages all and commits
abbr -a gp "git push"
abbr -a gl "git pull --rebase"

# Neovim abbreviations
abbr -a n "nvim ."
abbr -a vi nvim

# Zoxide "ji"
abbr -a jj ji

# utils
abbr -a o "open ." # open file explorer
abbr -a chx "chmod +x" # change file to executable
abbr -a src "source ~/.config/fish/config.fish" # source config

# GitHub CLI abbreviation
abbr -a ghb "gh browse"

# Cargo abbreviations
abbr -a ca "cargo add"
abbr -a cc "cargo check"
abbr -a cb "cargo build"
abbr -a cbr "cargo build --release"
abbr -a cbra "cargo build --release --target x86_64-apple-darwin --target aarch64-apple-darwin"
abbr -a cr "cargo run"
abbr -a ct "cargo test"
abbr -a cf "cargo +nightly fmt"
abbr -a clippy "cargo clippy"
abbr -a cfa "cargo fix --allow-dirty && cargo clippy --fix --allow-dirty"
abbr -a crw "cargo watch -x run"

# Homebrew abbreviations
abbr -a bi "brew install"
abbr -a bu "brew uninstall"
abbr -a bic "brew install --cask"
abbr -a buc "brew uninstall --cask --zap"

# Tauri
abbr -a cta "cargo tauri"
abbr -a ctd "cargo tauri dev"
abbr -a ctr "cargo run --manifest-path src-tauri/Cargo.toml"
abbr -a ctb "cargo build --manifest-path src-tauri/Cargo.toml"

# Bun abbreviations
abbr -a brs "bun run start"
abbr -a brb "bun run build"
abbr -a br "bun run"
abbr -a ba "bun add"
abbr -a bt "bun test"

# npm
abbr -a nls "npm ls -g"
abbr -a nig npm i -g

# tmux
abbr -a ta "tmux attach || tmux new -s alex"
abbr -a tls "tmux ls"
abbr -a tks "tmux kill-server"

# Eza
# Instead of doing `ls` we can do `eza`. `\e` is option/alt key
bind -M insert \el 'commandline -r "eza"; commandline -f execute'
abbr -a ls eza # list dirs and files
abbr -a ll "eza -a" # list dirs and files (hidden included)
abbr -a la "eza -la --no-user" # list dirs and files (hidden included) in long format

# Utility abbreviations
abbr -a rmrf "rm -rf" # Delete directory recursively

# Better `cp`
abbr -a cp "rsync -a"

# Previous directory
abbr -a \- prevd

# make `y` work like in vim
bind -M visual y fish_clipboard_copy
bind -M normal yy fish_clipboard_copy
bind p fish_clipboard_paste
