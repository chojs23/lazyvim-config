return {
  -- { "github/copilot.vim" },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "LspAttach",
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
  {
    "zbirenbaum/copilot-cmp",
    dependencies = "copilot.lua",
    enabled = false,
    opts = {},
    config = function(_, opts)
      local copilot_cmp = require("copilot_cmp")
      copilot_cmp.setup(opts)
      -- attach cmp source whenever copilot attaches
      -- fixes lazy-loading issues with the copilot cmp source
      -- require("lazyvim.util").lsp.on_attach(function(client)
      --   if client.name == "copilot" then
      --     copilot_cmp._on_insert_enter({})
      --   end
      -- end)
    end,
  },
}
