---@diagnostic disable-next-line: missing-fields
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "yaml", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
		sync_install = false,
		auto_install = true,
		ignore_install = { "javascript" },
  highlight = {
    enable = true,
  },
}
