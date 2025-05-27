-- Автозагрузка packer
require("plugins")

-- Общие настройки
require("settings")

-- Горячие клавиши
require("keymaps")

-- Настройка плагинов
require("config.lualine")
require("config.telescope")
--require("config.nvimtree")
require("config.neotree")
require("config.treesitter")
require("config.lsp")
require("config.lint")
require("config.cmp")
require("config.filetypes")

-- Цветовая схема
vim.cmd("colorscheme nightfox")
