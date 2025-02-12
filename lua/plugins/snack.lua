return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    indent = {
      hl = "IndentBlanklineChar",
    },
    blank = {
      -- char = " ",
      -- hl = "SnacksIndentBlank", ---@type string|string[] hl group for blank spaces
      hl = "#ffffff", ---@type string|string[] hl group for blank spaces
    },
    -- filter for buffers to enable indent guides
    -- filter = function(buf)
    --   return vim.g.snacks_indent ~= false and vim.b[buf].snacks_indent ~= false and vim.bo[buf].buftype == ""
    -- end,
  },
}
