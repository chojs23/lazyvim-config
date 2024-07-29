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
  { "RRethy/base16-nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-da-one-black",
    },
  },
}
