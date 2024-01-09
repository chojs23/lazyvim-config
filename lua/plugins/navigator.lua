return {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Move cursor left",
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Move cursor down",
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Move cursor up",
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Move cursor right",
    },
    {
      "<A-h>",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Resize left",
    },
    {
      "<A-j>",
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Resize down",
    },
    {
      "<A-k>",
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Resize up",
    },
    {
      "<A-l>",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Resize right",
    },
  },
}

-- vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
-- vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
-- vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
-- vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
-- -- moving between splits
-- vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
-- vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
-- vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
-- vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
