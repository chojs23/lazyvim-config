local M = {}

local Terminal = require("toggleterm.terminal").Terminal

-- Bottom
local bottom = "btm"

local system_info = Terminal:new({
  cmd = bottom,
  dir = "git_dir",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "double",
  },
  close_on_exit = true,
})

function M.system_info_toggle()
  system_info:toggle()
end

return M
