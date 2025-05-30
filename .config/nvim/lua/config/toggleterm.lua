require("toggleterm").setup({
  open_mapping = [[<C-t>]],
  direction = "horizontal", -- standart like a VSCode
  size = 15,
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  persist_mode = true,
})

-- lazygit float
local lazygit = require("toggleterm.terminal").Terminal:new({
  cmd = "lazygit",
  hidden = true,
  direction = "float",
})

function _G.ToggleLazyGit()
  lazygit:toggle()
end

