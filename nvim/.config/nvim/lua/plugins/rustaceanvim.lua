return {
  "mrcjkb/rustaceanvim",
  enabled = not vim.g.vscode,
  config = function()
    -- docs.rs
    vim.keymap.set("n", ")d", "<cmd>RustLsp openDocs<CR>")

    vim.g.rustaceanvim = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
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
