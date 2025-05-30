-- Автозагрузка packer
require("plugins")

-- Общие настройки
require("settings")

-- Настройка плагинов
require("config.lualine")
require("config.telescope")
require("config.neotree")
require("config.treesitter")
require("config.lsp")
require("config.lint")
require("config.cmp")
require("config.filetypes")
require("config.toggleterm")

-- Горячие клавиши
require("keymaps")

-- Цветовая схема
vim.cmd("colorscheme nightfox")
