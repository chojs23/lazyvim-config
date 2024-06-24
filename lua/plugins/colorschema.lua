return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = true,
    opts = {
      -- term_colors = false,
      -- transparent_background = true,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
      color_overrides = {
        mocha = {
          white = "#ffffff",
          text = "#cfcfcf",
          base = "#101010",
          crust = "#000000",
          mantle = "#151515",
          -- surface0 = "#3e4451",
          -- surface1 = "#545862",
          -- surface2 = "#565c64",

          rosewater = "#b6bdca",
          lavender = "#a4c6fc",
          red = "#fa5252",
          -- green = "#6bfa9b",
          blue = "#7893ff",
          -- yellow = "#fcf562",

          maroon = "#d46c75",
          -- sky = "#d19a66",

          pink = "#F5C2E7",
          sapphire = "#74C7EC",

          subtext1 = "#BAC2DE",
          subtext0 = "#A6ADC8",
          overlay2 = "#9399B2",
          overlay1 = "#7F849C",
          overlay0 = "#6C7086",
        },
      },
      highlight_overrides = {
        all = function(colors)
          return {
            EndOfBuffer = { fg = colors.text }, -- tilde
            WinSeparator = { fg = colors.text },
            TSVariable = { fg = colors.text },
            TSVariableBuiltin = { fg = colors.mauve },
            ["@variable"] = { link = "TSVariable" },
            ["@variable.builtin"] = { link = "TSVariableBuiltin" },
            ["@lsp.type.variable"] = { link = "TSVariable" },
            TSNamespace = { fg = colors.yellow },
            ["@namespace"] = { link = "TSNamespace" },
            ["@lsp.type.namespace"] = { link = "TSNamespace" },
          }
        end,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    enabled = true,
    opts = {
      style = "moon",
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
      sidebars = { "qf", "vista_kind", "terminal", "packer", "help" },
      transparent = true,
      -- on_colors = function(colors)
      --   colors.bg = "#000000"
      --   colors.bg_dark = "#000000"
      --   colors.bg_float = "#000000"
      --   colors.bg_highlight = "#121212"
      --   colors.bg_statusline = "#000000"
      --   colors.bg_sidebar = "#000000"
      --   colors.fg_gutter = "#2c2c2c"
      --   colors.border = "#e0e0e0"
      --   colors.git = {
      --     add = "#24bf55",
      --     change = "#FFCB6B",
      --     delete = "#ba1a37",
      --     ignore = "#545c7e",
      --   }
      --   colors.gitSigns = {
      --     add = "#24bf55",
      --     change = "#FFCB6B",
      --     delete = "#ba1a37",
      --   }
      -- end,
      -- on_highlights = function(hl, colors)
      --   hl.LineNr = {
      --     fg = colors.dark5,
      --   }
      --   hl.CursorLineNr = {
      --     fg = colors.dark5,
      --   }
      --   hl.NeoTreeGitAdded = {
      --     fg = "#24bf55",
      --   }
      --   hl.NeoTreeGitDeleted = {
      --     fg = "#ba1a37",
      --   }
      --   hl.NeoTreeGitModified = {
      --     fg = "#FFCB6B",
      --   }
      -- end,
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = false,
    config = function()
      require("cyberdream").setup({
        -- Recommended - see "Configuring" below for more config options
        transparent = false,
        italic_comments = true,
        hide_fillchars = false,
        borderless_telescope = false,
        terminal_colors = true,
        theme = { -- Default: nil
          variant = "dark", -- Default: "deafult" (dark)
          highlights = {
            -- Highlight groups to override, adding new groups is also possible
            -- See `:help highlight-groups` for a list of highlight groups

            -- Example:
            -- Comment = { fg = "#696969", bg = "NONE", italic = true },
            EndOfBuffer = { fg = "#ffffff" }, -- tilde
            GitSignsCurrentLineBlame = { fg = "#8a8a8a" },
            NeoTreeGitAdded = {
              fg = "#24bf55",
            },
            NeoTreeGitDeleted = {
              fg = "#ba1a37",
            },
            NeoTreeGitModified = {
              fg = "#FFCB6B",
            },
            WinSeparator = { fg = "#cfcfcf" },
            Function = { fg = "#7893ff" },
            TSVariable = { fg = "#cfcfcf" },
            TSVariableBuiltin = { fg = "#cba6f7" },
            ["@variable"] = { link = "TSVariable" },
            ["@variable.builtin"] = { link = "TSVariableBuiltin" },
            ["@variable.member"] = { fg = "#a4c6fc" },
            ["@lsp.type.variable"] = { link = "TSVariable" },
            TSNamespace = { fg = "#f9e2af" },
            ["@namespace"] = { link = "TSNamespace" },
            ["@lsp.type.namespace"] = { link = "TSNamespace" },
          },

          -- Override a color entirely
          colors = {
            -- Example:
            bg = "#000000",
            -- green = "#00ff00",
            -- magenta = "#ff00ff",
          },
        },
      })
    end,
  },
  { "RRethy/base16-nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-da-one-black",
    },
  },
}
