require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git"},
  },
  extensions = {
    project = {},
    packer = {},
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
      hidden = true,
      respect_gitignore = false,
    },
  },
}

require('telescope').load_extension('project')
require('telescope').load_extension('packer')
require('telescope').load_extension('file_browser')
