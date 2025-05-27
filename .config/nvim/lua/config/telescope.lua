require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", ".git"},
  },
  extensions = {
    project = {},
    packer = {},
  },
}

require('telescope').load_extension('project')
require('telescope').load_extension('packer')
