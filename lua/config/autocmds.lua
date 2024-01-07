require("config/commands")

-- vim.highlight.create("NeogitDiffContextHighlight", { guifg = "#eeeeee" })
-- vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { guifg = "#eeeeee" })

vim.cmd([[
   augroup ColorSchemeOverride
   au!
   au ColorScheme *
   \ highlight! NeogitDiffContextHighlight guifg=#dddddd guibg=#151515
   \| highlight! FloatBorder guifg=#ffffff
   \| highlight! LineNr guifg=#4d4d4d guibg=#1a1a1a
   \| highlight! TreesitterContext guibg=#242424
]])

-- vim.cmd([[
--    augroup ColorSchemeOverride
--    au!
--    au ColorScheme *
--    \ highlight! Comment cterm=italic gui=italic guifg=#858585
-- \|  highlight! Normal guifg=#d6d6d6
-- \|  highlight! @variable guifg=#c0c0c0
-- \|  highlight! @variable.builtin guifg=#f9e2af
-- \|  highlight! @constant guifg=#c0c0c0
-- \|  highlight! @parameter guifg=#FC9A41
-- \|  highlight! @property guifg=#f5454a
-- \|  highlight! GitSignsCurrentLineBlame cterm=italic gui=italic guifg=#505050
-- \|  highlight! Visual guibg=#424242
-- \|  highlight! LspInlayHint guifg=#636363 guibg=#151721
-- \|  highlight! CopilotSuggestion guifg=#969696
-- \|  highlight! TroubleNormal guibg=#151515
-- " \|  highlight! Pmenu guibg=#1c1c1c
-- " \|  highlight! PmenuThumb guibg=#bdbbbb
-- " \|  highlight! PmenuSel guibg=#003000
-- " \|  highlight! NeoTreeCursorLine guibg=#303030
-- " \|  highlight! NeoTreeDotfile guibg=#7a7a7a
-- " \|  highlight! NeoTreeGitIgnored guifg=#7a7a7a
-- " \|  highlight! NeoTreeGitUntracked guifg=#7a7a7a
-- ]])

-- vim.api.nvim_exec_autocmds("ColorScheme", {})

-- https://gist.github.com/swarn/fb37d9eefe1bc616c2a7e476c0bc0316#what-is-semantic-highlighting

-- local links = {
--   ["@lsp.type.namespace"] = "@namespace",
--   ["@lsp.type.type"] = "@type",
--   ["@lsp.type.class"] = "@type",
--   ["@lsp.type.enum"] = "@type",
--   ["@lsp.type.interface"] = "@type",
--   ["@lsp.type.struct"] = "@structure",
--   ["@lsp.type.parameter"] = "@parameter",
--   ["@lsp.type.variable"] = "@variable",
--   ["@lsp.type.property"] = "@property",
--   ["@lsp.type.enumMember"] = "@constant",
--   ["@lsp.type.function"] = "@function",
--   ["@lsp.type.method"] = "@method",
--   ["@lsp.type.macro"] = "@macro",
--   ["@lsp.type.decorator"] = "@function",
-- }
-- for newgroup, oldgroup in pairs(links) do
--   vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
-- end

-- if using copilot.vim
-- vim.g.copilot_node_command = "~/.nvm/versions/node/v16.15.0/bin/node"

-- vim.cmd([[highlight! Comment cterm=italic gui=italic guifg=#858585]])
-- vim.cmd([[highlight! Normal guifg=#d6d6d6]])
-- vim.cmd([[highlight! @variable guifg=#bababa]])
-- vim.cmd([[highlight! @constant guifg=#bababa]])
-- vim.cmd([[highlight! @parameter guifg=#FC9A41]])
-- vim.cmd([[highlight! @property guifg=#ef596f]])
-- vim.cmd([[highlight! GitSignsCurrentLineBlame cterm=italic gui=italic guifg=#8a8a8a]])
-- vim.cmd([[highlight! Visual guibg=#424242]])
-- vim.cmd([[highlight! LspInlayHint guifg=#474747]])
-- vim.cmd([[highlight! CopilotSuggestion guifg=#969696]])
-- vim.cmd([[highlight! Pmenu guibg=#1c1c1c]])
-- vim.cmd([[highlight! PmenuThumb guibg=#bdbbbb]])
-- vim.cmd([[highlight! PmenuSel guibg=#003000]])
-- vim.cmd([[highlight! NeoTreeCursorLine guibg=#303030]])
-- vim.cmd([[highlight! NeoTreeDotfile guibg=#7a7a7a]])
-- vim.cmd([[highlight! NeoTreeGitIgnored guifg=#7a7a7a]])
-- vim.cmd([[highlight! NeoTreeGitUntracked guifg=#7a7a7a]])

-- vim.api.nvim_create_autocmd({ "InsertEnter" }, {
--   callback = function()
--     vim.lsp.inlay_hint(0, true)
--   end,
-- })
-- vim.api.nvim_create_autocmd({ "InsertLeave" }, {
--   callback = function()
--     vim.lsp.inlay_hint(0, false)
--   end,
-- })
-- vim.diagnostic.config({
--   update_in_insert = false,
-- })
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--   update_in_insert = false,
-- })
