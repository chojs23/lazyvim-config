return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["javascript"] = { { "prettierd" } },
      ["javascriptreact"] = { { "prettierd" } },
      ["typescript"] = { { "prettierd" } },
      ["typescriptreact"] = { { "prettierd" } },
      ["vue"] = { { "prettierd" } },
      ["css"] = { { "prettierd" } },
      ["scss"] = { { "prettierd" } },
      ["less"] = { { "prettierd" } },
      ["html"] = { { "prettierd" } },
      ["json"] = { { "prettierd" } },
      ["jsonc"] = { { "prettierd" } },
      ["yaml"] = { { "prettierd" } },
      ["markdown"] = { { "prettierd" } },
      ["markdown.mdx"] = { { "prettierd" } },
      ["graphql"] = { { "prettierd" } },
      ["handlebars"] = { { "prettierd" } },
    },
    -- -- If this is set, Conform will run the formatter on save.
    -- -- It will pass the table to conform.format().
    -- -- This can also be a function that returns the table.
    -- format_on_save = {
    --   -- I recommend these options. See :help conform.format for details.
    --   lsp_fallback = true,
    --   timeout_ms = 500,
    -- },
    -- -- If this is set, Conform will run the formatter asynchronously after save.
    -- -- It will pass the table to conform.format().
    -- -- This can also be a function that returns the table.
    -- format_after_save = {
    --   lsp_fallback = true,
    -- },
  },
}
