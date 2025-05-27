local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Theme
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use "EdenEast/nightfox.nvim"
  use "tjdevries/colorbuddy.nvim"

  -- Preview colours
  use 'norcalli/nvim-colorizer.lua'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'nvim-telescope/telescope-project.nvim'
  use 'nvim-telescope/telescope-packer.nvim'
  use 'doctorfree/cheatsheet.nvim'
  use 'wesleimp/telescope-windowizer.nvim'

  -- Lualine
  use 'nvim-lualine/lualine.nvim'

  -- NvimTree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  }

  -- Lint
  use 'mfussenegger/nvim-lint'
	-- Autocompletion core
	use 'hrsh7th/nvim-cmp'

	-- Completion sources
	use 'hrsh7th/cmp-nvim-lsp'      -- для LSP
	use 'hrsh7th/cmp-buffer'        -- для текста из буфера
	use 'hrsh7th/cmp-path'          -- пути файлов
	use 'saadparwaiz1/cmp_luasnip'  -- snippets

	-- Snippets engine
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
