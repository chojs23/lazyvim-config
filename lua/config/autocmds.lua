vim.cmd([[
   augroup ColorSchemeOverride
   au!
   au ColorScheme *
   \ highlight! Comment cterm=italic gui=italic guifg=#a3a3a3
\| highlight! Normal guifg=#d6d6d6
\|  highlight! GitSignsCurrentLineBlame cterm=italic gui=italic guifg=#a3a3a3
\|  highlight! Visual guibg=#424242
\|  highlight! LspInlayHint guifg=#5c5c5c
\|  highlight! Pmenu guibg=#424242
\|  highlight! PmenuThumb guibg=#bdbbbb
\|  highlight! PmenuSel guibg=#222222
\|  highlight! NeoTreeCursorLine guibg=#303030
\|  highlight! NeoTreeGitIgnored guifg=#7a7a7a
]])
vim.api.nvim_exec_autocmds("ColorScheme", {})
