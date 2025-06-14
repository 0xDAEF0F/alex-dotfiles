-- Disable search highlighting and close floating windows
vim.keymap.set("n", "<Esc>", function()
  vim.cmd("nohlsearch")
  -- Close any floating windows (including LSP hover)
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local config = vim.api.nvim_win_get_config(win)
    if config.relative ~= "" then
      vim.api.nvim_win_close(win, false)
    end
  end
end)

-- case-sensitive "*"
vim.keymap.set("n", "*", function()
  local word = vim.fn.expand("<cword>")
  vim.fn.setreg("/", "\\C\\<" .. word .. "\\>")
  vim.cmd("normal! n")
end)

-- case-sensitive "#"
vim.keymap.set("n", "#", function()
  local word = vim.fn.expand("<cword>")
  vim.fn.setreg("/", "\\C\\<" .. word .. "\\>")
  vim.cmd("normal! N")
end)

-- Yank without newline
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line without newline" })

-- Yank full directory/file path
vim.keymap.set("n", "<leader>yd", ":let @+ = expand('%:p:h')<CR>") -- dir
vim.keymap.set("n", "<leader>yf", ":let @+ = expand('%:p')<CR>") -- file

-- vscode only keymaps
if vim.g.vscode then
  require("keymaps-vscode")
else
  -- Map alt+s to save file (in reality its cmd+s, but nvim thinks its alt+s)
  vim.keymap.set("n", "<M-s>", function()
    require("conform").format()
    vim.cmd("w")
  end, { desc = "Save and format with Cmd+S" })

  vim.keymap.set("n", "<leader>q", "<cmd>q!<CR>")
  vim.keymap.set("n", "-", "<cmd>Oil --float<CR>")
  vim.keymap.set("n", "<leader>f", "<cmd>lua require('conform').format()<CR>")

  -- change the directory in nvim
  vim.keymap.set("n", "<leader>cd", "<cmd>cd%:h<CR>")

  -- Telescope LSP document symbols
  vim.keymap.set("n", "<leader>.", "<cmd>Telescope lsp_document_symbols<CR>")

  -- Quickfix navigation
  vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>", { desc = "Next quickfix item" })
  vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>", { desc = "Previous quickfix item" })
end
