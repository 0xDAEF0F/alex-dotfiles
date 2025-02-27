### Todos

- Detect when there is more than one tmux pane and if so make font smaller in terminal.
- Add `q` to motion in nvim for quotes instead of literal quotes.
- Figure out how the jumplist works exactly in vscode-nvim.
- Fix karabiner mod-morph issue.
- Adjust the scroll amount with `ctrl+du`.
- Add `-` to word delimiters on a system wide level.
- Vim highlight selected word in visual but case sensitive.

- Change the suggestions color since it confuses me with comments.
- Folds are now working integrate them pls
- move the zmk stuff to `.dotfiles`
- Highlight incrementally on search in TMUX.
- Better touch command abbrv
- Focus parts of windows fast in browser, vscode, etc
- Toggle the bar on/off in vscode that appears at the bottom of the screen for more real estate.
- Investigate on: `autoparse-inline-edit-links` and "Character Level Diffs" `cursor.diffs.useCharacterLevelDiffs`
- focus to text efficiently
- More vertical space vs code
- Check out zen browser.
- Clear the scroll bar on the files panel vscode.
- add stylua `/Users/ale/.config/stylua/stylua.toml` to dotfiles
- break formatting in json max-width
- Practice regex

### Links

- Vim registers:
  [vim-register-tutorial](https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/copy-paste/)
- Vscode Neovim:
  [vscode-neovim]("https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim")
  [keybindings]("https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim#explorerlist-navigation-bindings")
- Karabiner Elements:
  [karabiner-elements]("https://karabiner-elements.pqrs.org/docs/")
- Fish vi mode docs:
  [fish-vi-mode-docs]("https://fishshell.com/docs/current/interactive.html#command-mode")
- Better touch tool docs:
  [docs on better touch tool]("https://docs.folivora.ai/")
- Vscode api docs:
  [vscode-docs]("https://code.visualstudio.com/api/references/vscode-api")
- Vscode commands docs:
  [vscode-commands-docs]("https://code.visualstudio.com/api/references/commands")

### commands

- (cli) Look for all the process under: `pstree -s fish`
- (cli) Register a default opening of an text file: `duti -s {app.id} {file.extension} {operation}`
- (nvim) Yank file name "nvim": full path `:let @+ = expand('%:p')` only file `:let @+ = expand('%:t')`
- (vimium) Copy url of a website to clipboard: `yf` and the current url is `yy`
- (cli) Get id of app: `osascript -e 'id of application "Google Chrome"'`

### Notes

- `ctrl+l` forces neovim to redraw in vscode.
- Mac key bindings location: `~/Library/Keybindings/DefaultKeyBinding.dict`
