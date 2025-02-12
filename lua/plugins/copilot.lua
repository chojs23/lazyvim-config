return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-y>",
          accept_word = false,
          accept_line = false,
          next = "<C-n>",
          prev = "<C-p>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = false,
        auto_refresh = true,
        layout = {
          position = "right",
          ratio = 0.3,
        },
      },
      filetypes = {
        markdown = true,
        help = true,
      },
      -- copilot_node_command = "/Users/neo/.nvm/versions/node/v16.15.0/bin/node",
    },
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   opts = function()
  --     LazyVim.cmp.actions.ai_accept = function()
  --       if require("copilot.suggestion").is_visible() then
  --         LazyVim.create_undo()
  --         require("copilot.suggestion").accept()
  --         return true
  --       end
  --     end
  --   end,
  -- },
}
