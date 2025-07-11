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

	--Markdown preview
  use 'ellisonleao/glow.nvim'
  use 'simrat39/symbols-outline.nvim'
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

	--Language packs
  use 'sheerun/vim-polyglot'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'nvim-telescope/telescope-project.nvim'
  use 'nvim-telescope/telescope-packer.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'doctorfree/cheatsheet.nvim'
  use 'wesleimp/telescope-windowizer.nvim'

  -- Lualine
  use 'nvim-lualine/lualine.nvim'

  -- NeoTree
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}

	-- BufferLine
	use {
		'akinsho/bufferline.nvim',
		tag = "*",
		requires = 'nvim-tree/nvim-web-devicons',
		config = function()
			require("bufferline").setup{}
		end
	}

  -- Toggleterm terminal like vscode
  use { "akinsho/toggleterm.nvim", version = "*" }

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Lint
  use 'mfussenegger/nvim-lint'

	-- Troubel
	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}

	-- Autocompletion core
	use 'hrsh7th/nvim-cmp'

	-- Completion sources
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'saadparwaiz1/cmp_luasnip'

	-- for Lua and Neovim API
	use {
		"folke/lazydev.nvim",
		ft = "lua",
		config = function()
			require("lazydev").setup()
	 end
	}

	-- Snippets engine
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	-- which key help
	use {
		"folke/which-key.nvim",
		requires = {
			"echasnovski/mini.icons",
		},
		keys = "<leader>",  -- boot after use <leader>
		config = function()
			require("which-key").setup({})
		end
	}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
