return {
  "mrcjkb/rustaceanvim",
  ft = { "rust" },
  opts = function(_, opts)
    vim.g.rustaceanvim = {
      tools = {
        float_win_config = {
          border = "rounded",
        },
      },
    }
  end,
}
