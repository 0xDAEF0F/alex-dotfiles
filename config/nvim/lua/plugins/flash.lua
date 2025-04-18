return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    labels = "rtneiohysvafumkljcpgdqxbz",
    label = {
      style = "overlay",
    },
    modes = {
      treesitter = {
        labels = "rtneiohysvafumkljcpgdqxbz",
      },
      char = {
        enabled = false,
      },
    },
    prompt = {
      enabled = false,
    },
  },
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "S",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
  },
}
