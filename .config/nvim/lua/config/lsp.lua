require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

-- Go
lspconfig.gopls.setup {}

-- YAML
lspconfig.yamlls.setup({
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        ["https://json.schemastore.org/ansible-playbook.json"] = "/*.yml",
      },
      validate = true,
    },
  },
})

vim.o.updatetime = 300
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focus = false })]]
