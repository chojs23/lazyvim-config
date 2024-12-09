vim.api.nvim_create_user_command("Bottom", function()
  require("utils.btm.lua.btm").system_info_toggle()
end, {})
