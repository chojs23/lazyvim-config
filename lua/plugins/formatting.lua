return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd", "prettier", stop_after_first = true },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      css = { "prettierd", "prettier", stop_after_first = true },
      yaml = { "prettierd", "prettier", stop_after_first = true },
      json = { "prettierd", "prettier", stop_after_first = true },
      markdown = { "prettierd", "prettier", stop_after_first = true },
      -- ["javascript"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["javascriptreact"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["typescript"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["typescriptreact"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["vue"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["css"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["scss"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["less"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["html"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["json"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["jsonc"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["yaml"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["markdown"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["markdown.mdx"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["graphql"] = { { "prettierd", "prettier", stop_after_first = true } },
      -- ["handlebars"] = { { "prettierd", "prettier", stop_after_first = true } },
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
