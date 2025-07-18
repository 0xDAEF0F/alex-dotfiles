-- https://rust-analyzer.github.io/book/configuration.html
-- https://github.com/mrcjkb/rustaceanvim
return {
  "mrcjkb/rustaceanvim",
  enabled = not vim.g.vscode,
  config = function()
    -- docs.rs
    vim.keymap.set("n", ")d", "<cmd>RustLsp openDocs<CR>")
    vim.keymap.set("n", "<leader>rs", "<cmd>RustLsp flyCheck run<CR>")
    vim.g.rustaceanvim = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
              extraArgs = {
                "--",
                "-W",
                "clippy::all",
                "-A",
                "clippy::uninlined_format_args",
                "-A",
                "clippy::new-without-default",
              },
            },
          },
        },
      },
    }
  end,
}
