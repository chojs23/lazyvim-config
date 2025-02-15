return {
  -- {
  --   "akinsho/bufferline.nvim",
  --   event = "VeryLazy",
  --   branch = "main",
  --   keys = {
  --     { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
  --     { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
  --     { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers" },
  --     { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
  --     { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
  --     { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
  --     { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
  --     { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
  --     { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
  --   },
  --   opts = {
  --     options = {
  --     -- stylua: ignore
  --     close_command = function(n) require("mini.bufremove").delete(n, false) end,
  --     -- stylua: ignore
  --     right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
  --       diagnostics = "nvim_lsp",
  --       always_show_bufferline = false,
  --       diagnostics_indicator = function(_, _, diag)
  --         local icons = require("lazyvim.config").icons.diagnostics
  --         local ret = (diag.error and icons.Error .. diag.error .. " " or "")
  --           .. (diag.warning and icons.Warn .. diag.warning or "")
  --         return vim.trim(ret)
  --       end,
  --       offsets = {
  --         {
  --           filetype = "neo-tree",
  --           text = "Neo-tree",
  --           highlight = "Directory",
  --           text_align = "left",
  --         },
  --       },
  --     },
  --   },
  --   config = function(_, opts)
  --     require("bufferline").setup(opts)
  --     -- Fix bufferline when restoring a session
  --     vim.api.nvim_create_autocmd("BufAdd", {
  --       callback = function()
  --         vim.schedule(function()
  --           pcall(nvim_bufferline)
  --         end)
  --       end,
  --     })
  --   end,
  -- },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    enabled = true,
    opts = {
      cmdline = {
        enabled = true, -- enables the Noice cmdline UI
        view = "cmdline", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      },
      lsp = {
        hover = {
          silent = false,
        },
      },
      messages = {
        enabled = true,
        view = "notify", -- default view for messages
        view_error = "notify", -- view for errors
        view_warn = "notify", -- view for warnings
        view_history = "messages", -- view for :messages
        view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
      },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
      -- https://github.com/folke/noice.nvim/blob/main/lua/noice/config/views.lua
      views = {
        notify = {
          replace = true,
        },
        mini = {
          position = {
            row = -1,
            -- col = "100%",
            col = 0,
          },
        },
      },
    },
  -- stylua: ignore
  keys = {
    { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
    { "<leader>snl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
    { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
    { "<leader>sna", function() require("noice").cmd("all") end, desc = "Noice All" },
    { "<leader>snd", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },
    { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
    { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
  },
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        stages = "static",
        top_down = false,
        timeout = 2000,
        background_colour = "#242424",
      })
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      notifier = { enabled = false },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
      local Snacks = require("snacks")
      local colors = {
        -- [""] = Snacks.util.color("Special"),
        bg = "#202328",
        fg = "#bbc2cf",
        yellow = "#ECBE7B",
        cyan = "#008080",
        darkblue = "#081633",
        green = "#98be65",
        orange = "#FF8800",
        violet = "#a9a1e1",
        magenta = "#c678dd",
        blue = "#51afef",
        red = "#ec5f67",
      }
      -- opts.options.theme = "16color"

      local function ins_left(component)
        table.insert(opts.sections.lualine_c, component)
      end

      local function ins_right(component)
        table.insert(opts.sections.lualine_x, component)
      end

      local conditions = {
        buffer_not_empty = function()
          return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
        end,
        hide_in_width = function()
          return vim.fn.winwidth(0) > 80
        end,
        check_git_workspace = function()
          local filepath = vim.fn.expand("%:p:h")
          local gitdir = vim.fn.finddir(".git", filepath .. ";")
          return gitdir and #gitdir > 0 and #gitdir < #filepath
        end,
      }

      -- ins_left({
      --   -- filesize component
      --   "filesize",
      --   cond = conditions.buffer_not_empty,
      -- })

      table.insert(opts.sections.lualine_x, 1, {
        function()
          local msg = "No Active Lsp"
          local buf_ft = vim.api.nvim_get_option_value("filetype", {
            buf = 0,
          })
          local clients = vim.lsp.get_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              return client.name
            end
          end
          return msg
        end,
        -- icon = " LSP:",
        color = { fg = "#ffffff", gui = "bold" },
      })

      ins_right({
        "o:encoding",
        fmt = string.upper,
        cond = conditions.hide_in_width,
        color = { fg = colors.green, gui = "bold" },
      })
      ins_right({
        "fileformat",
        fmt = string.upper,
        icons_enabled = false,
        color = { fg = colors.green, gui = "bold" },
      })

      -- Copilot
      table.insert(opts.sections.lualine_x, 2, {
        function()
          local icon = require("lazyvim.config").icons.kinds.Copilot
          local status = require("copilot.api").status.data
          return icon .. (status.message or "")
        end,
        cond = function()
          if not package.loaded["copilot"] then
            return
          end
          local ok, clients = pcall(require("lazyvim.util").lsp.get_clients, { name = "copilot", bufnr = 0 })
          if not ok then
            return false
          end
          return ok and #clients > 0
        end,
        color = function()
          if not package.loaded["copilot"] then
            return
          end
          local status = require("copilot.api").status.data
          return colors[status.status] or colors[""]
        end,
      })
    end,
  },
}
