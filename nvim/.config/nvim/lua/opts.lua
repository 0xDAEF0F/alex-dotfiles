vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.timeoutlen = 400

if vim.g.vscode then
  vim.o.scrolloff = 0
  -- vscode only options
else
  vim.opt.termguicolors = true
  vim.opt.tabstop = 3 -- display 3 spaces per tab
  vim.opt.scrolloff = 3

  -- highlight the cursor line (only the number not the entire line)
  vim.opt.cursorline = true
  vim.opt.cursorlineopt = "number"

  vim.opt.updatetime = 500

  -- Enable auto-reading of files when changed externally (default)
  vim.opt.autoread = true

  vim.opt.number = true
  vim.opt.signcolumn = "yes"
  vim.opt.mouse = "a"
  vim.opt.showmode = false
  vim.opt.completeopt = "menuone,noinsert"
  vim.opt.laststatus = 0

  vim.opt.splitright = true
  vim.opt.splitbelow = true

  vim.opt.foldlevel = 99
  vim.opt.foldlevelstart = 99

  -- blinking cursor
  vim.opt.guicursor =
    "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

  -- persistent undo
  vim.opt.undofile = true
  vim.opt.undolevels = 10000
end
