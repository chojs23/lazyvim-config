return {
  {
    "folke/persistence.nvim",
    enabled = false,
    event = "BufReadPre",
    opts = { options = vim.opt.sessionoptions:get() },
  -- stylua: ignore
  keys = {
    { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
    { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
    { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
  },
  },
  {
    dir = "utils/term",
    event = "VeryLazy",
    keys = {
      {
        "<leader>gb",
        "<cmd>Bottom<CR>",
        desc = "Toggle sysinfo",
      },
    },
  },
}
