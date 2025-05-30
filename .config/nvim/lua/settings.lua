vim.opt.termguicolors = true
vim.opt.syntax = "on"
--vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.opt.expandtab = false
vim.opt.mouse = "a"
vim.opt.autoread = true
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf-8"

-- отключаем netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = false
vim.opt.relativenumber = false

-- Включать номера в Insert и Visual режимах
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  callback = function()
    vim.opt.number = true
  end,
})

-- Выключать номера при выходе из этих режимов
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function()
    vim.opt.number = false
  end,
})
