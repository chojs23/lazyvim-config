return {
  "neovim/nvim-lspconfig",
  -- event = { "BufReadPre", "BufNewFile" },
  opts = {
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        prefix = "icons",
      },
      severity_sort = true,
      float = {
        border = "rounded",
        source = "always",
      },
    },
    inlay_hints = {
      enabled = true,
    },
    servers = {
      -- eslint = {},
      lua_ls = {
        settings = {
          Lua = {
            hint = {
              enable = true,
            },
          },
        },
      },
      tsserver = {
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "literal",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = false,
              includeInlayVariableTypeHints = false,
              includeInlayPropertyDeclarationTypeHints = false,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
        },
      },
      rust_analyzer = {
        on_attach = function(bufnr, client)
          vim.lsp.inlay_hint.enable(0, false)
        end,
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              autoreload = false,
            },
            procMacro = {
              enable = true,
            },
            inlayHints = {
              enable = false,
            },
          },
        },
      },
    },
    setup = {},
  },
}
