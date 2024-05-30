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
  -- {
  --   "CopilotC-Nvim/CopilotChat.nvim",
  --   branch = "canary",
  --   cmd = "CopilotChat",
  --   dependencies = {
  --     { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
  --     { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
  --   },
  --   opts = {
  --     show_help = true,
  --     debug = false,
  --     auto_follow_cursor = false,
  --   },
  --   init = function()
  --     LazyVim.on_load("which-key.nvim", function()
  --       vim.schedule(function()
  --         require("which-key").register({
  --           c = {
  --             name = "+CopilotChat",
  --           },
  --           { prefix = "<leader>cc", desc = "CopilotChat" },
  --         })
  --       end)
  --     end)
  --   end,
  --   config = function(_, opts)
  --     vim.api.nvim_create_autocmd("BufEnter", {
  --       pattern = "copilot-chat",
  --       callback = function()
  --         vim.opt_local.relativenumber = false
  --         vim.opt_local.number = false
  --       end,
  --     })
  --     require("CopilotChat").setup(opts)
  --   end,
  --   keys = {
  --     { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
  --     { "<leader>cct", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat - Toggle window" },
  --     { "<leader>ccg", "<cmd>CopilotChatCommit<cr>", desc = "CopilotChat - Write commit message" },
  --     {
  --       "<leader>cch",
  --       function()
  --         local actions = require("CopilotChat.actions")
  --         local help = actions.help_actions()
  --         if not help then
  --           LazyVim.warn("No diagnostics found on current line")
  --           return
  --         end
  --         require("CopilotChat.integrations.telescope").pick(help)
  --       end,
  --       desc = "CopilotChat - Help actions",
  --     },
  --     {
  --       "<leader>ccp",
  --       function()
  --         local actions = require("CopilotChat.actions")
  --         require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
  --       end,
  --       desc = "CopilotChat - Prompt actions",
  --     },
  --     -- { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
  --     {
  --       "<leader>ccv",
  --       ":CopilotChat",
  --       mode = "x",
  --       desc = "CopilotChat - Open in vertical split",
  --     },
  --   },
  -- },
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
